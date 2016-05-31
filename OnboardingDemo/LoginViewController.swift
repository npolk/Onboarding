//
//  LoginViewController.swift
//  OnboardingDemo
//
//  Created by Serene Mirza on 5/31/16.
//  Copyright © 2016 Natalie Polk. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    //let navigate = AppDelegate()
    let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonTapped(sender: UIButton) {
        var (failure_message, user) = UserController.sharedInstance.loginUser(emailField.text!, suppliedPassword: passwordField.text!)
        
        if (failure_message == nil) {
            print("User logged in in login view")
            appDelegate.navigateToLoggedInNavigationController()
        }
        else {
            print("\(failure_message)")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
