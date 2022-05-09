//
//  NameTextfieldCustomControl.swift
//  UIScreenPractice
//
//  Created by Vishal Prajapati on 09/05/22.
//

import Foundation
import UIKit
class NameTextfieldCustomControl: UICustomComponent {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect  = super.textRect(forBounds: bounds)
        return rect.inset(by: textPading)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPading)
    }
    
    override func setup() {
        super.setup()
        self.placeholder = "Full Name"
    }
    
}
