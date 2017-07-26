//
//  loginViewController.swift
//  projectx
//
//  Created by Emmanuel Idehen on 7/20/17.
//  Copyright © 2017 Emmanuel Idehen. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func loginButtonPressed(_ sender: Any) {
        // If there is text in the email textfield if not, return the function
        guard let email = emailTextField.text, !email.isEmpty else {
            return
        }
        
        // If there is text in the passwordTextField if not, return the function
        guard let password = passwordTextField.text, !password.isEmpty else {
            return
        }
        
        UserService.loginUser(email: email, password: password){
            // When all is done
            self.performSegue(withIdentifier: "signInFromLogin", sender: self)
        }
        
        
        
    }
   

}
