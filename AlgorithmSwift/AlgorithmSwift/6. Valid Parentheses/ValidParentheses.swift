//
//  ValidParentheses.swift
//  AlgorithmSwift
//
//  Created by 业王 on 2019/3/17.
//  Copyright © 2019年 J0hnnny. All rights reserved.
//

import Cocoa

struct Stack<T> {
    private var data = [T]()
    
    mutating func push(_ elem: T) {
        data.append(elem)
    }
    
    mutating func pop() -> T? {
        return data.popLast()
    }
    
    func peek() -> T? {
        return data.last
    }
    
    func isEmpty() -> Bool {
        return data.isEmpty
    }
}

func isValid(_ s: String) -> Bool {
    let map = [Character("("): Character(")"),
               Character("["): Character("]"),
               Character("{"): Character("}"),]
    
    var stack = Stack<Character>()
    
    for char in s {
        guard let elem = stack.peek() else {
            stack.push(char)
            continue
        }
        
        if map[elem] == char {
            let _ = stack.pop()
        } else {
            stack.push(char)
        }
    }
    
    if stack.isEmpty() {
        return true
    } else {
        return false
    }
}
