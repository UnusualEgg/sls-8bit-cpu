#include <string>

#include "cpu.h"
#include "state.h"

State::State()
    : program_counter(0), microcode_counter(0), instruction_register(0),
      flag_register(0), upper_register(0), lower_register(0), a_register(0),
      b_register(0), c_register(0), d_register(0), port_0(0), port_1(0) {}

void print_state(State state) {
    std::cout << "~~~ Counters ~~~" << std::endl;
    std::cout << "program_counter : " << state.program_counter << std::endl;
    std::cout << "microcode_counter : " << state.microcode_counter << std::endl
              << std::endl;

    std::cout << "~~~ Registers ~~~" << std::endl;
    std::cout << "instruction: " << std::to_string(state.instruction_register)
              << std::endl;
    std::cout << "flags : " << std::to_string(state.flag_register) << std::endl;
    std::cout << "upper : " << std::to_string(state.upper_register)
              << std::endl;
    std::cout << "lower : " << std::to_string(state.lower_register)
              << std::endl;
    std::cout << "a : " << std::to_string(state.a_register) << std::endl;
    std::cout << "b : " << std::to_string(state.b_register) << std::endl
              << std::endl;
    std::cout << "~~~ Ports ~~~" << std::endl;
    std::cout << "0 : " << std::to_string(state.port_0) << std::endl;
    std::cout << "1 : " << std::to_string(state.port_1) << std::endl;
}
