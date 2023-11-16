#include <iomanip>
#include <iostream>
#include <sstream>

#include "instruction_serializer.h"

namespace instruction_serializer {

using std::vector;

std::string byte_to_hex_string(const uint8_t val) {
    std::stringstream stream;
    stream << std::setfill('0') << std::setw(2) << std::right << std::hex
           << static_cast<int>(val);
    return stream.str();
}

uint8_t serialize_register_string(const std::string &reg) {
    if (reg == "A") {
        return 0;
    } else if (reg == "B") {
        return 1;
    } else if (reg == "C") {
        return 2;
    } else if (reg == "D") {
        return 3;
    }
    throw std::invalid_argument("Unsupported register string: " + reg);
}

// format: opcode
vector<uint8_t> serialize_basic_instruction(const uint8_t opcode) {
    const uint8_t instruction_reg = opcode << 4;
    return {instruction_reg};
}

// format: opcode rd imm
vector<uint8_t>
serialize_imm_type_instruction(const uint8_t opcode,
                               const std::vector<std::string> &tokens) {
    const uint8_t destination_reg = serialize_register_string(tokens[1]);
    const uint8_t immediate_val   = std::stoi(tokens[2]);
    const uint8_t instruction_reg = (opcode << 4) | destination_reg;

    return {instruction_reg, immediate_val};
}

// format: opcode rd
vector<uint8_t>
serialize_reg_type_instruction(const uint8_t opcode,
                               const std::vector<std::string> &tokens) {
    const uint8_t destination_reg = serialize_register_string(tokens[1]);
    const uint8_t instruction_reg = (opcode << 4) | destination_reg;

    return {instruction_reg};
}

// format: opcode rd address
vector<uint8_t> serialize_load_address_type_instruction(
    const uint8_t opcode, const std::vector<std::string> &tokens) {
    const uint8_t destination_reg   = serialize_register_string(tokens[1]);
    const uint8_t address          = std::stoi(tokens[2]);
    const uint8_t instruction_reg   = (opcode << 4) | destination_reg;

    return {instruction_reg, address};
}

// format: opcode rs address
vector<uint8_t> serialize_store_address_type_instruction(
    const uint8_t opcode, const std::vector<std::string> &tokens) {
    const uint8_t source_reg = serialize_register_string(tokens[1]);

    if (source_reg > 3) {
        throw std::invalid_argument("Cannot store register " +
                                    std::string(tokens[1]));
    }

    const uint8_t address          = std::stoi(tokens[2]);
    const uint8_t instruction_reg   = (opcode << 4) | source_reg;

    return {instruction_reg, address};
}

// format opcode address imm
vector<uint8_t> serialize_store_imm_address_type_instruction(
    const uint8_t opcode, const std::vector<std::string> &tokens) {
    const uint8_t immediate_val     = std::stoi(tokens[1]);
    const uint8_t address          = std::stoi(tokens[2]);
    const uint8_t instruction_reg   = opcode << 2;

    return {instruction_reg, immediate_val, address};
}

// format: opcode addr
vector<uint8_t>
serialize_branch_type_instruction(const uint8_t opcode,
                                  const std::vector<std::string> &tokens) {
    const uint8_t instruction_reg   = opcode << 2;
    const uint8_t address          = std::stoi(tokens[1]);
    return {instruction_reg, address};
}

// format: opcode rs rd
vector<uint8_t>
serialize_move_type_instruction(const std::vector<std::string> &tokens) {
    const uint8_t source_reg      = serialize_register_string(tokens[1]);
    const uint8_t destination_reg = serialize_register_string(tokens[2]);

    if (source_reg > 1) {
        throw std::invalid_argument("Cannot mov source register " +
                                    std::string(tokens[1]));
    }

    uint8_t instruction_reg;
    if (source_reg == 0) {
        instruction_reg = (cpu::M_MOVA << 2) | destination_reg;
    } else if (source_reg == 1) {
        instruction_reg = (cpu::M_MOVB << 2) | destination_reg;
    }

    return {instruction_reg};
}

vector<uint8_t>
serialize_out_instruction(const uint8_t opcode,
                          const std::vector<std::string> &tokens) {
    const uint8_t port            = std::stoi(tokens[1]);
    const uint8_t data            = std::stoi(tokens[2]);
    const uint8_t instruction_reg = (opcode << 2);

    return {instruction_reg, port, data};
}

std::string deserialize_register(const uint8_t rom_byte) {
    uint8_t reg = rom_byte & 0x04;
    if (reg == 0b0001) {
        return "A";
    } else if (reg == 0b0010) {
        return "B";
    } else if (reg == 0b0100) {
        return "C";
    } else if (reg == 0b1000) {
        return "D";
    } else {
        return "INVALID REG";
    }
}

std::string deserialize_registers(const uint8_t rom_byte,bool get_second=false) {
    uint8_t reg = rom_byte & 0x04;
    if (get_second) {reg>>=2;}
    // reg>>(get_second<<1); //this is the same I think
    reg&=0b11;
    switch (reg) {
        case 0b00: return "A";
        case 0b01: return "B";
        case 0b10: return "C";
        case 0b11: return "D";
        default: return "INVALID REG";
    }
}

std::string deserialize_condition(const uint8_t rom_byte) {
    switch (rom_byte) {
        case cpu::CONDITION::ZERO: return "ZERO";
        case cpu::CONDITION::OVF: return "OVF";
        case cpu::CONDITION::ALU_ZERO: return "ALU_ZERO";
        case cpu::CONDITION::EQ: return "EQ";
        default: return "INVALID CONDITION";
    }
}

std::string deserialize_imm_value(const uint8_t rom_byte) {
    return "x" + deserialize_byte(rom_byte);
}

std::string deserialize_byte(const uint8_t rom_byte) {
    std::stringstream stream;
    stream << std::setfill('0') << std::setw(2) << std::right << std::hex
           << static_cast<int>(rom_byte);
    return stream.str();
}

std::string deserialize_address_value(const uint8_t byte) {
    const uint8_t address = byte;
    std::stringstream stream;
    stream << "x" << std::setfill('0') << std::setw(2)//was address <= 255 ? 2 : 4
           << std::right << std::hex << static_cast<int>(address);
    return stream.str();
}

vector<uint8_t> serialize_instruction(const vector<std::string> &symbols) {

    const cpu::Opcode opcode = cpu::get_opcode_of_instruction(symbols);

    switch (opcode) {
    case cpu::Opcode::HLT:
        return serialize_basic_instruction(cpu::M_HLT);
    case cpu::Opcode::INC:
        return serialize_reg_type_instruction(cpu::M_INC, symbols);
    case cpu::Opcode::STM:
        return serialize_reg_type_instruction(cpu::M_STM, symbols);
    case cpu::Opcode::JMP:
        return serialize_reg_type_instruction(cpu::M_JMP, symbols);
    case cpu::Opcode::JIF:
        return serialize_reg_type_instruction(cpu::M_JIF, symbols);

    case cpu::Opcode::ADD:
        return serialize_reg_type_instruction(cpu::M_ADD, symbols);
    case cpu::Opcode::ADDI:
        return serialize_imm_type_instruction(cpu::M_ADDI, symbols);
    case cpu::Opcode::ADDC:
        return serialize_reg_type_instruction(cpu::M_ADDC, symbols);
    case cpu::Opcode::SUB:
        return serialize_reg_type_instruction(cpu::M_SUB, symbols);
    case cpu::Opcode::SUBI:
        return serialize_imm_type_instruction(cpu::M_SUBI, symbols);
    case cpu::Opcode::SUBC:
        return serialize_reg_type_instruction(cpu::M_SUBC, symbols);
    case cpu::Opcode::NOT:
        return serialize_reg_type_instruction(cpu::M_NOT, symbols);
    case cpu::Opcode::AND:
        return serialize_reg_type_instruction(cpu::M_AND, symbols);
    case cpu::Opcode::ANDI:
        return serialize_imm_type_instruction(cpu::M_ANDI, symbols);
    case cpu::Opcode::OR:
        return serialize_reg_type_instruction(cpu::M_OR, symbols);
    case cpu::Opcode::ORI:
        return serialize_imm_type_instruction(cpu::M_ORI, symbols);
    case cpu::Opcode::XOR:
        return serialize_reg_type_instruction(cpu::M_XOR, symbols);
    case cpu::Opcode::XORI:
        return serialize_imm_type_instruction(cpu::M_XORI, symbols);
    case cpu::Opcode::SHL:
        return serialize_reg_type_instruction(cpu::M_SHL, symbols);
    case cpu::Opcode::SHLC:
        return serialize_reg_type_instruction(cpu::M_SHLC, symbols);
    case cpu::Opcode::LD:
        return serialize_reg_type_instruction(cpu::M_LD, symbols);
    case cpu::Opcode::LDI:
        return serialize_imm_type_instruction(cpu::M_LDI, symbols);
    case cpu::Opcode::LDA:
        return serialize_load_address_type_instruction(cpu::M_LDA, symbols);
    case cpu::Opcode::ST:
        return serialize_reg_type_instruction(cpu::M_ST, symbols);
    case cpu::Opcode::STA:
        return serialize_store_address_type_instruction(cpu::M_STA, symbols);
    case cpu::Opcode::STI:
        return serialize_imm_type_instruction(cpu::M_STI, symbols);
    case cpu::Opcode::STIA:
        return serialize_store_imm_address_type_instruction(cpu::M_STIA,
                                                            symbols);
    case cpu::Opcode::CMP:
        return serialize_basic_instruction(cpu::M_CMP);
    case cpu::Opcode::B:
        return serialize_branch_type_instruction(cpu::M_B, symbols);
    case cpu::Opcode::BC:
        return serialize_branch_type_instruction(cpu::M_BC, symbols);
    case cpu::Opcode::BLT:
        return serialize_branch_type_instruction(cpu::M_BLT, symbols);
    case cpu::Opcode::BLTE:
        return serialize_branch_type_instruction(cpu::M_BLTE, symbols);
    case cpu::Opcode::BE:
        return serialize_branch_type_instruction(cpu::M_BE, symbols);
    case cpu::Opcode::BNE:
        return serialize_branch_type_instruction(cpu::M_BNE, symbols);
    case cpu::Opcode::BGT:
        return serialize_branch_type_instruction(cpu::M_BGT, symbols);
    case cpu::Opcode::BGTE:
        return serialize_branch_type_instruction(cpu::M_BGTE, symbols);
    case cpu::Opcode::MOVA:
        return serialize_move_type_instruction(symbols);
    case cpu::Opcode::MOVB:
        return serialize_move_type_instruction(symbols);
    case cpu::Opcode::NOP:
        return serialize_basic_instruction(cpu::M_NOP);
    case cpu::Opcode::SETC:
        return serialize_basic_instruction(cpu::M_SETC);
    case cpu::Opcode::CLC:
        return serialize_basic_instruction(cpu::M_CLC);
    case cpu::Opcode::OUT:
        return serialize_out_instruction(cpu::M_OUT, symbols);
    }

    throw std::invalid_argument("Unknown opcode in instruction serializing: " +
                                symbols[0]);
}

std::vector<std::string>
deserialize_instruction(const std::vector<uint8_t> bytes) {

    const cpu::Opcode opcode        = cpu::get_opcode_for_value(bytes[0] >> 4);
    const std::string opcode_string = cpu::get_string_for_opcode(opcode);

    switch (opcode) {
    case cpu::Opcode::ADD:
    case cpu::Opcode::SUB:
        return {opcode_string, deserialize_registers(bytes[0]),deserialize_registers(bytes[0],true)};
    case cpu::Opcode::INC:
    case cpu::Opcode::ADDC:
    case cpu::Opcode::SUBC:
    case cpu::Opcode::NOT:
    case cpu::Opcode::AND:
    case cpu::Opcode::OR:
    case cpu::Opcode::XOR:
    case cpu::Opcode::SHL:
    case cpu::Opcode::SHLC:
    case cpu::Opcode::LD:
    case cpu::Opcode::ST:
        return {opcode_string, deserialize_register(bytes[0])};

    case cpu::Opcode::ADDI:
    case cpu::Opcode::SUBI:
    case cpu::Opcode::ANDI:
    case cpu::Opcode::ORI:
    case cpu::Opcode::XORI:
    case cpu::Opcode::LDI:
    case cpu::Opcode::STI:
    case cpu::Opcode::STM:
        return {opcode_string, deserialize_register(bytes[0]),
                deserialize_imm_value(bytes[1])};

    case cpu::Opcode::B:
    case cpu::Opcode::BC:
    case cpu::Opcode::BLT:
    case cpu::Opcode::BLTE:
    case cpu::Opcode::BE:
    case cpu::Opcode::BNE:
    case cpu::Opcode::BGT:
    case cpu::Opcode::BGTE:
    case cpu::Opcode::JMP:
        return {opcode_string, deserialize_address_value(bytes[1])};
    case cpu::Opcode::JIF:
        return {opcode_string, deserialize_condition(bytes[0]) ,deserialize_address_value(bytes[1])};

    case cpu::Opcode::MOVA:
        return {opcode_string, "A", deserialize_register(bytes[0])};
    case cpu::Opcode::MOVB:
        return {opcode_string, "B", deserialize_register(bytes[0])};

    case cpu::Opcode::LDA:
    case cpu::Opcode::STA:
        return {opcode_string, deserialize_register(bytes[0]),
                deserialize_address_value(bytes[1])};

    case cpu::Opcode::STIA:
        return {opcode_string, deserialize_imm_value(bytes[1]),
                deserialize_address_value(bytes[2])};

    case cpu::Opcode::CMP:
    case cpu::Opcode::NOP:
    case cpu::Opcode::SETC:
    case cpu::Opcode::CLC:
    case cpu::Opcode::HLT:
        return {opcode_string};

    case cpu::Opcode::OUT:
        return {opcode_string, std::to_string(bytes[1]),
                deserialize_imm_value(bytes[2])};
    }

    throw std::invalid_argument(
        "Unknown opcode in instruction deserializing: " + opcode_string);
}
} // namespace instruction_serializer