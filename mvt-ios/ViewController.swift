//
//  ViewController.swift
//  mvt-ios
//
//  Created by Igor de Oliveira Sa on 24/12/14.
//  Copyright (c) 2014 Igor de Oliveira Sa. All rights reserved.
//

import UIKit

// Excelent tutorial: http://www.veasoftware.com/tutorials/2014/8/22/xcode-6-tutorial-ios-8-0-facebook-login-in-swift

class ViewController: UIViewController, FBLoginViewDelegate, GPPSignInDelegate {
    
    @IBOutlet var fbLoginView : FBLoginView!
    @IBOutlet var googleSignInButton : GPPSignInButton!
    
    
    let kClientId = "230078211083-p7t54o5en03ectaa21t5c5chtvgv128b.apps.googleusercontent.com"
    
    func finishedWithAuth(auth: GTMOAuth2Authentication!, error: NSError!) {
        if error != nil {
            println("Error: \(error.localizedDescription)")
        } else {
            println("Logged In with Google")
            self.refreshInterfaceBasedOnSignIn()
        }
    }
    
    func refreshInterfaceBasedOnSignIn() {
        if GPPSignIn.sharedInstance().authentication != nil {
            self.googleSignInButton.hidden = true;
        }
        else {
            self.googleSignInButton.hidden = false;
        }
    }

    func signOut() {
        GPPSignIn.sharedInstance().signOut()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.fbLoginView.delegate = self
        self.fbLoginView.readPermissions = ["public_profile", "email", "user_friends"]
        
        //Google
        var signIn = GPPSignIn.sharedInstance()
        
        
        signIn.shouldFetchGooglePlusUser = true
        signIn.shouldFetchGoogleUserEmail = true
        
        // You previously set kClientId in the "Initialize the Google+ client" step
        signIn.clientID = kClientId
        
        // Uncomment one of these two statements for the scope you chose in the previous step
        signIn.scopes = [ kGTLAuthScopePlusLogin ]  // "https://www.googleapis.com/auth/plus.login" scope
        //signIn.scopes = @[ @"profile" ];            // "profile" scope
        
        // Optional: declare signIn.actions, see "app activities"
        signIn.delegate = self
        
        signIn.trySilentAuthentication()
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

