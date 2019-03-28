//
//  MaximumDepthOfBinaryTree.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/3/28.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

func maxDepth(_ root: TreeNode?) -> Int {
    if root == nil { return 0 }
    return 1 + max(maxDepth(root?.left), maxDepth(root?.right))
}
