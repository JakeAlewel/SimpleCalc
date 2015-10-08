//
//  OperationHandler.swift
//  SimpleCalc
//
//  Created by Jacob Alewel on 10/7/15.
//  Copyright © 2015 Jacob Alewel. All rights reserved.
//

import Foundation

func operationIsInInputString(inputString: String) -> String? {
    let operationKeyWords : Array = ["count", "avg", "fact"];
    
    for keyWord in operationKeyWords {
        if inputString.lowercaseString.rangeOfString(keyWord) != nil {
            return keyWord;
        }
    }
    return nil;
}

func handleOperation(inputString:String, operationString:String) {
    print("Found operation")
}