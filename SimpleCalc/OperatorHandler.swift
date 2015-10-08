//
//  OperatorHandler.swift
//  SimpleCalc
//
//  Created by Jacob Alewel on 10/7/15.
//  Copyright © 2015 Jacob Alewel. All rights reserved.
//

import Foundation

func operandForInputString(inputOperand : String) -> String? {
    let validOperands = ["+", "-", "*", "/", "%"];
    
    for operand in validOperands {
        if operand == inputOperand {
            return operand;
        }
    }
    
    return nil;
}

func handleOperand(firstInputString : String, operand : String) {
    let firstValue : Int = convert(firstInputString);
    let secondValue : Int = convert(input());

    switch operand {
        case "+":
            printResult(firstValue + secondValue);
        case "-":
            printResult(firstValue - secondValue);
        case "*":
            printResult(firstValue * secondValue);
        case "/":
            printResult(firstValue / secondValue);
        case "%":
            printResult(firstValue % secondValue);
        default:
            print("Invalid Operand Switch");
    }
}