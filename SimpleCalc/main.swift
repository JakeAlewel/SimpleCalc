//
//  main.swift
//  SimpleCalc
//
//  Created by Jacob Alewel on 10/7/15.
//  Copyright © 2015 Jacob Alewel. All rights reserved.
//

import Foundation

func doOneCalculation(firstInput : String) {
    let commandInput : String  = input();
    let identifiedFunction = functionForInputString(commandInput);
    let identifiedOperator = operatorForInputString(commandInput);
    
    if identifiedFunction != nil {
        handleFunction(firstInput, functionString: identifiedFunction!);
    } else if identifiedOperator != nil {
        handleOperator(firstInput, operatorString: identifiedOperator!);
    } else {
        print("Unknown Command");
    }
}

func availableCommands() -> Array<String> {
    var commands = Array<String>();
    commands.appendContentsOf(availableFunctions());
    commands.appendContentsOf(availableOperators());
    return commands;
}

func mainProgram() {
    print("Welcome to SimpleCalc, type exit to quit.");
    print("The available commands are: \(availableCommands())");
    
    var inputString : String = input();
    while inputString != "exit" {
        doOneCalculation(inputString);
        inputString = input();
    }
    
    print("Thanks for using SimpleCalc!");
}

mainProgram();
