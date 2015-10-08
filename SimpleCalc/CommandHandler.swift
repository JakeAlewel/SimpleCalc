//
//  CommandHandler.swift
//  SimpleCalc
//
//  Created by Jacob Alewel on 10/7/15.
//  Copyright © 2015 Jacob Alewel. All rights reserved.
//

import Foundation

func validCommand(inputCommand : String) -> Bool {
    let validCommands = ["+", "-", "*", "/", "%"];
    for command in validCommands {
        if command == inputCommand {
            return true;
        }
    }
    
    return false
}

func printResult(resultValue : Int) {
    print("Result: \(resultValue)")
}

func handleCommand(inputString : String) {
    let firstValue = convert(inputString);
    let command = input();
    if !validCommand(command) {
        print("Invalid Command");
        return;
    }
    let secondValue = convert(input());
    
    switch command {
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
            print("Invalid Command");
    }
}