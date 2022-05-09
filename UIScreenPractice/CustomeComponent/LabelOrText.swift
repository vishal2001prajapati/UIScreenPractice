//
//  LabelOrText.swift
//  UIScreenPractice
//
//  Created by Vishal Prajapati on 04/05/22.
//

import Foundation
import UIKit

class LabelOrText: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        self.font = UIFont(name: "SFProDisplay-Regular", size: 16)
        self.backgroundColor = .white
        self.textColor = .black
    }
}
