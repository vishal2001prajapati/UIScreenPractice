//
//  LabelCustomComponent.swift
//  UIScreenPractice
//
//  Created by Vishal Prajapati on 02/05/22.
//

import Foundation
import UIKit

class LabelCustomComponent: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        self.font = UIFont(name: "SFProDisplay-Bold", size: 60)
        self.font = UIFont.boldSystemFont(ofSize: 34)
        self.backgroundColor = .white
        self.textColor = .black
    }
}
