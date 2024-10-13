#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;
    double a = 5.0, b = 3.0;

    std::cout << "Add: " << calc.Add(a, b) << std::endl;
    std::cout << "Sub: " << calc.Sub(a, b) << std::endl;

    return 0;
}
