


//
//  SymmetricTree.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/3/27.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

func isSymmetric(_ root: TreeNode?) -> Bool {
    
    func _isSymmetric(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        if left == nil && right == nil { return true }
        if left != nil && right == nil || left == nil && right != nil || left?.val != right?.val { return false }
        return _isSymmetric(left?.left, right?.right) && _isSymmetric(left?.right, right?.left)
    }
    
    if root == nil { return true }
    
    return _isSymmetric(root?.left, root?.right)
}
