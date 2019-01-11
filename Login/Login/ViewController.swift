//
//  ViewController.swift
//  Login
//
//  Created by Erick Alcantara on 1/10/19.
//  Copyright © 2019 Erick Alcantara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
   
    @IBOutlet weak var forgotUserNameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender:
        Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title =
                userNameTextField.text
        }
    }

    
    @IBAction func forgotUserNameButton(_ sender: Any) {
        performSegue(withIdentifier: "toSplash", sender: forgotUserNameButton)
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "toSplash", sender: forgotPasswordButton)
    }
    
}
