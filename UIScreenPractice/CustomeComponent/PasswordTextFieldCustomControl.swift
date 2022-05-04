//
//  PasswordTextFieldCustomControl.swift
//  UIScreenPractice
//
//  Created by Vishal Prajapati on 02/05/22.
//

import Foundation
import UIKit

class PasswordTextFieldCustomControl: UICustomComponent {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
        commonInit()
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
        self.placeholder = "Password"
    }
    
    let rightButton  = UIButton(type: .custom)
    
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        let textRect = super.rightViewRect(forBounds: bounds)
        return textRect.inset(by: UIEdgeInsets(top: 0, left: -30, bottom: 0, right: 0))
    }
    
    func toggle() {
        isSecureTextEntry = !isSecureTextEntry
        isSecureTextEntry ? rightButton.setImage(UIImage(named: "hidden") , for: .normal) : rightButton.setImage(UIImage(named: "show") , for: .normal)
    }
    
    func commonInit() {
        rightButton.setImage(UIImage(named: "hidden") , for: .normal)
        rightButton.addTarget(self, action: #selector(toggleShowHide), for: .touchUpInside)
        rightButton.frame = CGRect(x: 0, y:0, width:10, height:10)
        rightViewMode = .always
        rightView = rightButton
        isSecureTextEntry = true
    }
}

extension PasswordTextFieldCustomControl {
    @objc
    func toggleShowHide(button: UIButton) {
        toggle()
    }
}
