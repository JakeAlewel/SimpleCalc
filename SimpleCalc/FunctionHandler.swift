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

func handleFunction(inputString:String, functionString:String) {
    print("Found operation " + functionString)
}