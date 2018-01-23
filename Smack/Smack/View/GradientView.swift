//
//  GradientView.swift
//  Smack
//
//  Created by George Buckley on 23/01/2018.
//  Copyright © 2018 George Buckley. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var topColour: UIColor = #colorLiteral(red: 0.4784313725, green: 0.2705882353, blue: 0.4862745098, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColour: UIColor = #colorLiteral(red: 0.6099540591, green: 0.4069162905, blue: 0.5992966294, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColour.cgColor, bottomColour.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
