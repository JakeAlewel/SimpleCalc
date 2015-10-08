//
//  IOScanner.swift
//  SimpleCalc
//
//  Created by Jacob Alewel on 10/7/15.
//  Copyright © 2015 Jacob Alewel. All rights reserved.
//

import Foundation

func input() -> String {
    let keyboard = NSFileHandle.fileHandleWithStandardInput();
    let inputData = keyboard.availableData;
    let result = NSString(data: inputData, encoding:NSUTF8StringEncoding) as! String;
    return result.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
}

func convert(incoming: String) -> Double? {
    let numberFromString = NSNumberFormatter().numberFromString(incoming);
    if numberFromString == nil {
        return nil;
    } else {
        return numberFromString?.doubleValue;
    }
}

func arrayOfIntsForInputString(inputString: String) -> Array<Double>? {
    let components = inputString.componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceCharacterSet());
    
    var convertedComponents = Array<Double>();
    for component in components {
        let number = convert(component);
        if number == nil {
            return nil;
        }
        convertedComponents.append(number!);
    }
    
    return convertedComponents;
}

func printResult(resultValue : Int) {
    print("Result: \(resultValue)")
}

func printResult(resultValue : Double) {
    print("Result: \(resultValue)")
}
