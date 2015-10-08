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

func convert(incoming: String) -> Int? {
    let numberFromString = NSNumberFormatter().numberFromString(incoming);
    if numberFromString == nil {
        return nil;
    } else {
        return numberFromString?.integerValue;
    }
}

func printResult(resultValue : Int) {
    print("Result: \(resultValue)")
}
