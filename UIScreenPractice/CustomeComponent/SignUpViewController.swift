//
//  SignUpViewController.swift
//  UIScreenPractice
//
//  Created by Vishal Prajapati on 09/05/22.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var textFullName: NameTextfieldCustomControl!
    @IBOutlet weak var textEmail: UICustomComponent!
    @IBOutlet weak var textPassword: PasswordTextFieldCustomControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textFullName.delegate = self
        textEmail.delegate = self
        textPassword.delegate = self
        textPassword.becomeFirstResponder()
        self.hideKeyboardWhenTappedAround()
    
    }
}

extension SignUpViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textFullName {
            textField.resignFirstResponder()
            textEmail.becomeFirstResponder()
        }
        else if textField == textEmail {
            textField.resignFirstResponder()
            textPassword.becomeFirstResponder()
        }
        else if textField == textPassword {
            textField.resignFirstResponder()
        }
        return true
    }
}

extension SignUpViewController {
    
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(SignUpViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
}
