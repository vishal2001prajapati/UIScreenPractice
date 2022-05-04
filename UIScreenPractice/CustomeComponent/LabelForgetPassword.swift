//
//  LabelForgetPassword.swift
//  UIScreenPractice
//
//  Created by Vishal Prajapati on 03/05/22.
//

import Foundation
import UIKit

class LabelForgetPassword: LabelCustomComponent {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    override func setup() {
        self.frame = CGRect(x: 0, y: 0, width: 100, height: 9)
        self.font = UIFont(name: "SFProDisplay-Medium", size: 12)
        self.textColor = UIColor.lblForgetPassword
    }
}

