//
//  ViewController.swift
//  mvt-ios
//
//  Created by Igor de Oliveira Sa on 24/12/14.
//  Copyright (c) 2014 Igor de Oliveira Sa. All rights reserved.
//

import UIKit

// Excelent tutorial: http://www.veasoftware.com/tutorials/2014/8/22/xcode-6-tutorial-ios-8-0-facebook-login-in-swift

class ViewController: UIViewController, FBLoginViewDelegate {
    
    @IBOutlet var fbLoginView : FBLoginView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.fbLoginView.delegate = self
        self.fbLoginView.readPermissions = ["public_profile", "email", "user_friends"]
    }
    
    
    func loginViewShowingLoggedInUser(loginView: FBLoginView!) {
        println("User logged in")
        println("This is where your perform segue")
    }
    
    func loginViewFetchedUserInfo(loginView: FBLoginView!, user: FBGraphUser!) {
        println("User name: \(user.name)")
        println("This is where your perform segue")

    }
    
    func loginViewShowingLoggedOutUser(loginView: FBLoginView!) {
        println("User logged out")
    }
    
    func loginView(loginView: FBLoginView!, handleError: NSError!) {
        println("Error: \(handleError.localizedDescription)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

