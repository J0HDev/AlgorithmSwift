//
//  ExcelSheetColumnTitle.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/4/11.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

func convertToTitle(_ n: Int) -> String {
    var result = ""
    var i = n
    while i > 0 {
        let ascii = (i - 1) % 26 + 65
        let char = Character(UnicodeScalar(ascii)!)
        result = String(char) + result
        i = (i-1)/26
    }
    return result
}

