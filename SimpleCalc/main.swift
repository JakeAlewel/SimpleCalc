//
//  main.swift
//  SimpleCalc
//
//  Created by Jacob Alewel on 10/7/15.
//  Copyright © 2015 Jacob Alewel. All rights reserved.
//

import Foundation

func mainProgram() {
    print("Welcome to SimpleCalc, type exit to quit.");
    
    var inputString : String = input();
    while inputString != "exit" {
        let operationInInput = operationIsInInputString(inputString);
        if(operationInInput != nil) {
            handleOperation(inputString, operationString: operationInInput!);
        } else {
            handleCommand(inputString);
        }
        
        inputString = input();
    }
    
    print("Thanks for using SimpleCalc!");
}

mainProgram();
