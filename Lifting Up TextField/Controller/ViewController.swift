//
//  ViewController.swift
//  Lifting Up TextField
//
//  Created by AKASH on 02/08/19.
//  Copyright © 2019 CDNS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtMobile: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtName.delegate = self
        txtMobile.delegate = self
        txtEmail.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == txtName {
            txtMobile.becomeFirstResponder()
        } else if textField == txtMobile {
            txtEmail.becomeFirstResponder()
        }else if textField == txtEmail {
            textField.resignFirstResponder()
        }
        return true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

