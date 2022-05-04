//
//  FacebookButtonCustom.swift
//  UIScreenPractice
//
//  Created by Vishal Prajapati on 03/05/22.
//

import Foundation
import UIKit

class FacebookButtonCustom: UIButton {
    
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
        self.backgroundColor = UIColor.btnFacebookColor
        self.frame = CGRect(x: 0, y: 0, width: 335, height: 44)
        self.titleLabel?.font = UIFont(name: "SFProDisplayBold", size: 12) ?? UIFont.systemFont(ofSize: 12)
        self.layer.cornerRadius = 8
        self.clipsToBounds = true
        self.tintColor = .white
        self.setTitle("CONNECT WITH FACEBOOK", for: .normal)
        setBtnImage(imageName: "facebook", on: .left)
    }
}

extension FacebookButtonCustom {
    
    func setBtnImage(imageName: String, on side: BtnImageSide) {
        
        let imageViewL = UIImageView(frame: CGRect(x: 10, y: 5, width: 32, height: 32))
        self.addSubview(imageViewL)
        if let imageWithSystemName = UIImage(systemName: imageName) {
            imageViewL.image = imageWithSystemName
        } else {
            imageViewL.image = UIImage(named: imageName)
        }
        let imageContainerViewL = UIView(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        imageContainerViewL.addSubview(imageViewL)
        
        
        let imageView = UIImageView(frame: CGRect(x: -50, y: 5, width: 32, height: 32))
        
        if let imageWithSystemName = UIImage(systemName: imageName) {
            imageView.image = imageWithSystemName
        }
        else {
            imageView.image = UIImage(named: imageName)
        }
        
        let imageContainerView = UIView(frame: CGRect(x: self.frame.maxX, y: 0, width: 42, height: 32))
        imageContainerView.addSubview(imageView)
        
        switch side {
        case .left:
            self.addSubview(imageContainerViewL)
        case .right:
            self.addSubview(imageContainerView)
        }
    }
}
