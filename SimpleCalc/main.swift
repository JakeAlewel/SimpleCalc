//
//  main.swift
//  SimpleCalc
//
//  Created by Jacob Alewel on 10/7/15.
//  Copyright © 2015 Jacob Alewel. All rights reserved.
//

import Foundation

func doOneCalculation(firstInput : String) {
    let operationInput : String  = input();
    let identifiedFunction = functionForInputString(operationInput);
    let identifiedOperand = operandForInputString(operationInput);
    
    if identifiedFunction != nil {
        handleFunction(firstInput, functionString: identifiedFunction!);
    } else if identifiedOperand != nil {
        handleOperand(firstInput, operand: operationInput);
    } else {
        print("Unknown Command");
    }
}

func mainProgram() {
    print("Welcome to SimpleCalc, type exit to quit.");
    
    var inputString : String = input();
    while inputString != "exit" {
        doOneCalculation(inputString);
        inputString = input();
    }
    
    print("Thanks for using SimpleCalc!");
}

mainProgram();
