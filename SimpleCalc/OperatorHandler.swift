//
//  OperatorHandler.swift
//  SimpleCalc
//
//  Created by Jacob Alewel on 10/7/15.
//  Copyright © 2015 Jacob Alewel. All rights reserved.
//

import Foundation

func availableOperators() -> Array<String> {
    return ["+", "-", "*", "/", "%"];
}

func operatorForInputString(inputOperator : String) -> String? {
    let validOperators = availableOperators();
    
    for operatorToCheck in validOperators {
        if operatorToCheck == inputOperator {
            return operatorToCheck;
        }
    }
    
    return nil;
}

func handleOperator(firstInputString : String, operatorString : String) {
    let firstValue = convert(firstInputString);
    let secondValue = convert(input());
    
    if firstValue == nil || secondValue == nil {
        print("Invalid Value Input(s)")
        return;
    }

    switch operatorString {
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
            print("Invalid Operator");
    }
}