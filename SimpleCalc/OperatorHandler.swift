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
    let firstValue = convert(firstInputString);
    let secondValue = convert(input());
    
    if firstValue == nil || secondValue == nil {
        print("Invalid Value Input(s)")
        return;
    }

    switch operand {
        case "+":
            printResult(firstValue! + secondValue!);
        case "-":
            printResult(firstValue! - secondValue!);
        case "*":
            printResult(firstValue! * secondValue!);
        case "/":
            printResult(firstValue! / secondValue!);
        case "%":
            printResult(firstValue! % secondValue!);
        default:
            print("Invalid Operand Switch");
    }
}