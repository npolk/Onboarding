//
//  RegistrationViewController.swift
//  OnboardingDemo
//
//  Created by Serene Mirza on 5/31/16.
//  Copyright © 2016 Natalie Polk. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Register"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButtonPressed(sender: UIButton) {
        var (failure_message, user) = UserController.sharedInstance.registerUser(emailField.text!, newPassword: passwordField.text!)
        
        if ((user?.email) != nil) {
            print("User registered in registration view")
            appDelegate.navigateToLoggedInNavigationController()
        }
        else {
            if failure_message != nil && failure_message != "" {
                print("\(failure_message)")
            }
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
