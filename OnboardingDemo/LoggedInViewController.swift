//
//  LoggedInViewController.swift
//  OnboardingDemo
//
//  Created by Serene Mirza on 5/31/16.
//  Copyright © 2016 Natalie Polk. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController {
    
    let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate

    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var user = UserController.sharedInstance.logged_in_user
        // Do any additional setup after loading the view.
        if user != nil {
            greetingLabel.text = "Welcome, \(user!.email)"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func logoutButtonTapped(sender: UIButton) {
        UserController.sharedInstance.logged_in_user!.email = "";
        UserController.sharedInstance.logged_in_user!.password = "";
        appDelegate.navigateToLandingViewController()
        
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
