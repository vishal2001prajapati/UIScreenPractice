//
//  ButtonCustomComponent.swift
//  UIScreenPractice
//
//  Created by Vishal Prajapati on 29/04/22.
//

import Foundation
import UIKit

class ButtonCustomComponent: UIButton {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setButton()
    }
    
    func setButton() {
        let heightContraints =  NSLayoutConstraint(item: self, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 48)
        NSLayoutConstraint.activate([heightContraints])
        self.backgroundColor = UIColor.buttonColor
        self.frame = CGRect(x: 0, y: 0, width: 335, height: 48)
        self.titleLabel?.font = UIFont(name: "SFProDisplay-Medium", size: 34)
        self.layer.cornerRadius = 8
        self.clipsToBounds = true
        self.tintColor = .white
        self.setTitle("SIGN IN", for: .normal)
    }
}
