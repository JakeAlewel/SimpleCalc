//
//  FunctionHandler.swift
//  SimpleCalc
//
//  Created by Jacob Alewel on 10/7/15.
//  Copyright © 2015 Jacob Alewel. All rights reserved.
//

import Foundation

func availableFunctions() -> Array<String> {
    return ["count", "avg", "fact"];
}

func functionForInputString(inputString: String) -> String? {
    let functionKeyWords = availableFunctions();
    
    for keyWord in functionKeyWords {
        if inputString.lowercaseString.rangeOfString(keyWord) != nil {
            return keyWord;
        }
    }
    
    return nil;
}

func calculateAndPrintAverageForNumbers(components: Array<Double>) {
    var total = 0.0;
    for number in components {
        total += number;
    }
    let average = total / Double(components.count);
    printResult(average);
}

func calculateAndPrintFactorialForNumbers(components: Array<Double>) {
    if components.count != 1 {
        print("Factorial Requires Single Value Input");
        return;
    }
    
    let number = components[0];
    let roundedNumber = Int(round(number));
    
    if number % 1 != 0 {
        print("Taking factorial of input rounded to: \(roundedNumber)");
    }
    
    if roundedNumber < 0 {
        print("Factorial must be greater than or equal to zero");
    } else if roundedNumber == 0 {
        printResult(1);
    } else {
        var factorial = 1;
        for index in 1...roundedNumber {
            factorial *= index;
        }
        printResult(factorial);
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
            calculateAndPrintFactorialForNumbers(components!);
        default:
            print("Invalid Function");
    }
}
