//
//  FunctionHandler.swift
//  SimpleCalc
//
//  Created by Jacob Alewel on 10/7/15.
//  Copyright © 2015 Jacob Alewel. All rights reserved.
//

import Foundation

func functionForInputString(inputString: String) -> String? {
    let operationKeyWords : Array = ["count", "avg", "fact"];
    
    for keyWord in operationKeyWords {
        if inputString.lowercaseString.rangeOfString(keyWord) != nil {
            return keyWord;
        }
    }
    return nil;
}

func calculateAndPrintAverageForNumbers(components: Array<Int>) {
    
}

func calculateAndPrintFactorialForNumbers(components: Array<Int>) {
    if components.count == 1 {
        let number = components[0];
        if number == 0 {
            printResult(1);
        } else {
            var factorial = 1;
            for index in 1...number {
                factorial *= index;
            }
            printResult(factorial);
        }
    } else {
        print("Factorial Requires Single Value Input");
    }
}

func handleFunction(inputString:String, functionString:String) {
    let components = arrayOfIntsForInputString(inputString);
    if components == nil {
        print("Invalid Value Input(s)");
        return;
    }
    
    switch functionString {
        case "count":
            printResult(components!.count);
        case "avg":
            calculateAndPrintAverageForNumbers(components!);
        case "fact":
            calculateAndPrintFactorialForNumbers(components!)
        
        default:
            print("Invalid Function");
    }
}
