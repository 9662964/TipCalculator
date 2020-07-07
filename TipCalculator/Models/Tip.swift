//
//  Tip.swift
//  TipCalculator
//
//  Created by iljoo Chae on 7/6/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation
class Tip {
    
    var totalAmount: Float
    var tipRatio: Float
    var people: Float
    
    init(totalAmount: Float, tipRatio: Float, people: Float = 2.0) {
        self.totalAmount = totalAmount
        self.tipRatio = tipRatio
        self.people = people
    }
}
