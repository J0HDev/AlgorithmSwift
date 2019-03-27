//
//  Sort.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/3/27.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

extension Array where Element : Comparable {
    mutating func bubble() {
        for i in 0..<self.count {
            for j in 0..<self.count - i - 1 {
                if self[j] > self[j+1] {
                    let t = self[j]
                    self[j] = self[j+1]
                    self[j+1] = t
                }
            }
        }
    }
    
    mutating func insertion() {
        for i in 1..<self.count {
            let value = self[i]
            var j = i - 1
            while j >= 0 {
                if value < self[j] {
                    self[j + 1] = self[j]
                } else {
                    break
                }
                j = j - 1
            }
            if i != j {
                self[j + 1] = value
            }
        }
    }
    
    mutating func merge() {
        func _merge(_ l: Int, _ m: Int, _ h: Int) {
            var left  = l
            var right = m+1
            var array = [Element]()
            
            while left <= m && right <= h {
                if self[left] < self[right] {
                    array.append(self[left])
                    left = left + 1
                }else {
                    array.append(self[right])
                    right = right + 1
                }
            }
            
            while left <= m {
                array.append(self[left])
                left = left + 1
            }
            
            while right <= h {
                array.append(self[right])
                right = right + 1
            }
            
            for i in l...h {
                self[i] = array.removeFirst()
            }
        }
        
        func partation(_ l: Int, _ h: Int) {
            if l >= h { return }
            let middle = (l + h) / 2
            partation(l, middle)
            partation(middle + 1, h)
            _merge(l, middle, h)
        }
        
        partation(0, self.count-1)
    }
    
    mutating func quick() {
        func swap(_ i: Int, _ j: Int) {
            let t = self[i]
            self[i] = self[j]
            self[j] = t
        }
        
        func partation(_ l: Int, _ h: Int) -> Int {
            guard l <= h else { return -1 }
            let o = self[h]
            var i = l
            for j in l...h {
                if self[j] < o {
                    swap(i, j)
                    i = i + 1
                }
            }
            swap(i, h)
            return i
        }
        
        func _quick(_ l: Int, _ h: Int) {
            guard l <= h else { return }
            let pvoit = partation(l, h)
            guard pvoit >= 0 else { return }
            _quick(l, pvoit-1)
            _quick(pvoit+1, h)
        }
        
        _quick(0, count-1)
    }
}
