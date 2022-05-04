//
//  LabelSimpleText.swift
//  UIScreenPractice
//
//  Created by Vishal Prajapati on 02/05/22.
//

import Foundation
import UIKit

class LabelSimpleText: LabelCustomComponent {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    override func setup() {
        self.font = UIFont(name: "SFProDisplayMedium", size: 30)
        self.textColor = UIColor.lblTextColor
        self.font = self.font.withSize(16)
    }
}
