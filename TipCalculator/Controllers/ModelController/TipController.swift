//
//  TipController.swift
//  TipCalculator
//
//  Created by iljoo Chae on 7/6/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation

class tipController {
    
    static let shared = tipController()
    
    func calculateTip(tipRatio: Float, amount: Float, people: Float) -> String {
        let totalBillAmount = amount
        let tipRatio = tipRatio / 100
        let people = people
        
        let tipAmount = amount * tipRatio
        let tipAmountPerPerson = tipAmount / people
        let amountPerPerson = totalBillAmount / people
        
        let totalAmount = totalBillAmount + tipAmount
        let forEachPerson = tipAmountPerPerson + amountPerPerson
        
        let result = "Total Amount is $\(totalAmount) \n Divided by \(people) people \n Need to pay $\(forEachPerson) person"
        
        return result
        
    }
}
