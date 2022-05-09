//
//  UICustomComponent.swift
//  UIScreenPractice
//
//  Created by Vishal Prajapati on 29/04/22.
//

import Foundation
import UIKit


class UICustomComponent: UITextField {
    
    var textPading = UIEdgeInsets(top: 2, left: 5, bottom: 2, right: 10)
    
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
    
    func setup() {
        self.layer.cornerRadius = 6
        self.clipsToBounds = true
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(red: 0.953, green: 0.949, blue: 0.949, alpha: 1).cgColor
        self.font = UIFont(name: "SFProText", size: 16)
        self.backgroundColor = UIColor.placeholderColor
        self.imgRightSide(imgName: "PhoneIcon")
        self.placeholder = "Email"
    }
}

//MARK: - ImageSetUp
extension UICustomComponent {
    func imgRightSide(imgName: String) {
        let imageView = UIImageView(frame:  CGRect(x: 0, y: 0, width: 10, height: 18))
        imageView.image = UIImage(named: imgName)
        let imageContainerView: UIView = UIView(frame: CGRect(x: 3, y: 7, width: 24, height: 24))
        imageContainerView.addSubview(imageView)
        rightView = imageContainerView
        rightViewMode = .always
    }
}
