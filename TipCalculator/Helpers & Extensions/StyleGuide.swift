//
//  StyleGuide.swift
//  TipCalculator
//
//  Created by iljoo Chae on 7/6/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

struct FontName {
    static let latoBold = "Lato-Bold"
    static let latoRegular = "Lato-Regular"
    static let latoLight = "Lato-Light"
}

extension UIColor {
    static let borderHighlight = UIColor(named: "borderHighlight")!
    static let cardGray = UIColor(named: "cardGray")!
    static let greenAccent = UIColor(named: "greenAccent")!
    static let mainText = UIColor(named: "mainText")!
    static let purpleAccent = UIColor(named: "purpleAccent")!
    static let spaceBlack = UIColor(named: "spaceBlack")!
    static let spaceGray = UIColor(named: "spaceGray")!
    static let subtleText = UIColor(named: "subtleText")!
    static let greatGreen = UIColor(named: "greatGreen")!
    static let lowRed = UIColor(named: "lowRed")!
    
}

extension UIView {
    func addCornerRadius(radius: CGFloat = 4) {
        self.layer.cornerRadius = radius
    }
    
    func addAccentBorder(width: CGFloat = 1, color: UIColor = .borderHighlight) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}



