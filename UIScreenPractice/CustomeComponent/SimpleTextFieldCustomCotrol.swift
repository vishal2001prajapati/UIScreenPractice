//
//  SimpleTextFieldCustomCotrol.swift
//  UIScreenPractice
//
//  Created by Vishal Prajapati on 09/05/22.
//

import Foundation
import UIKit

class SimpleTextFieldCustomCotrol: UICustomComponent {
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect  = super.textRect(forBounds: bounds)
        return rect.inset(by: textPading)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPading)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func setup() {
        self.imgRightSide(imgName: "")
        self.placeholder = "Email"
        self.backgroundColor = UIColor.placeholderColor
        self.font = UIFont(name: "SFProText", size: 16)
    }
}
