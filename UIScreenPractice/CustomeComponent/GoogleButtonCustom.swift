//
//  GoogleButtonCustom.swift
//  UIScreenPractice
//
//  Created by Vishal Prajapati on 03/05/22.
//

import Foundation
import UIKit

class GoogleButtonCustom: FacebookButtonCustom {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setButton()
    }
    
    override func setButton() {
        super.setButton()
        self.setTitle("CONNECT WITH GOOGLE", for: .normal)
        self.backgroundColor = UIColor.btnGoogleColor
        setBtnImage(imageName: "google", on: .left)
    }
}
