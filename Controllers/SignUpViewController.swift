//
//  SignUpViewController.swift
//  projectx
//
//  Created by Emmanuel Idehen on 7/20/17.
//  Copyright © 2017 Emmanuel Idehen. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {

    
    
    @IBOutlet weak var fullNameTextField: UITextField!
    
    
    @IBOutlet weak var emailTextfied: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func signupButtonPressed(_ sender: Any) {
        
        
        // If there is text in the email textfield if not, return the function
        guard let email = emailTextfied.text, !email.isEmpty else {
            return
        }
        // If there is text in the fullName if not, return the function
        guard let fullName = fullNameTextField.text, !fullName.isEmpty else {
            return
        }
        // If there is text in the passwordTextField if not, return the function
        guard let password = passwordTextField.text, !password.isEmpty else {
            return
        }
        
        // Create User
        UserService.createUser(fullName: fullName, email: email, password: password) {
            // When all is done
            self.performSegue(withIdentifier: "signIn", sender: self)
        }
        
        
        
        
        
        
        
    }
}
