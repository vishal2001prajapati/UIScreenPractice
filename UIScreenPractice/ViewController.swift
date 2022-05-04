//
//  ViewController.swift
//  UIScreenPractice
//
//  Created by Vishal Prajapati on 29/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtEmail: UICustomComponent!
    @IBOutlet weak var paswordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtEmail.delegate = self
        paswordText.delegate = self
        paswordText.becomeFirstResponder()
        self.hideKeyboardWhenTappedAround()
    }
}

//MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == txtEmail {
            textField.resignFirstResponder()
            paswordText.becomeFirstResponder()
        } else if textField == paswordText {
            textField.resignFirstResponder()
        }
        return true
    }
}

//MARK: - HideKeyboardWhenTappedAround
extension ViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
