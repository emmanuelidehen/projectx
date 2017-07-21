//
//  ForgotPasswordViewController.swift
//  projectx
//
//  Created by Emmanuel Idehen on 7/20/17.
//  Copyright © 2017 Emmanuel Idehen. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.alpha = 0
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendResetLinkButtonPressed(_ sender: Any) {
    
    activityIndicator.alpha = 1 // Make sure our activity indicator is visible
    activityIndicator.startAnimating() // Animate
    
    // If there is text in the email textfield if not, return the function
    guard let email = emailTextField.text, !email.isEmpty else {
    return
    }
    
    UserService.sendResetLink(email: email) {
    
    // When its done
    self.activityIndicator.stopAnimating() // Stop animation
    self.activityIndicator.alpha = 0 // Make it invisible
    
    // Create alert
    let alert = UIAlertController(title: "Email Sent", message: "An email was sent to  \(email). Please check ect.", preferredStyle: .alert)
    
    // Present alert
    self.present(alert, animated: true)
    
    // Add a button to alert
    alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
    }
    
}
}
