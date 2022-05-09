//
//  PrivacyLabelCustomCumponent.swift
//  UIScreenPractice
//
//  Created by Vishal Prajapati on 09/05/22.
//

import Foundation
import UIKit

class PrivacyLabelCustomCumponent: LabelCustomComponent {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    override func setup() {
        self.font = UIFont(name: "SFProDisplay-Regular", size: 16)
        self.text = "By Signing up you agree to our Terms Conditions & Privacy Policy."
        self.backgroundColor = .white
        self.textAlignment = .center
        self.textColor = UIColor.lblTextColor
    }
}
