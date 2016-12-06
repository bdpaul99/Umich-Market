//
//  ViewController.swift
//  FirebaseSocialLogin
//
//  Created by Brian Voong on 10/21/16.
//  Copyright © 2016 Lets Build That App. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {
//FBSDKLoginButtonDelegate
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        setupFacebookButtons()
        
        setupGoogleButtons()
    }
    
    fileprivate func setupGoogleButtons() {
        //add google sign in button
        let googleButton = GIDSignInButton()
        googleButton.frame = CGRect(x: 16, y: 300, width: view.frame.width - 32, height: 50)
        view.addSubview(googleButton)
        
        
        GIDSignIn.sharedInstance().uiDelegate = self
    }
    
    func handleCustomGoogleSign() {
        GIDSignIn.sharedInstance().signIn()
    }

//    fileprivate func setupFacebookButtons() {
//        let loginButton = FBSDKLoginButton()
//        view.addSubview(loginButton)
//        //frame's are obselete, please use constraints instead because its 2016 after all
//        loginButton.frame = CGRect(x: 16, y: 50, width: view.frame.width - 32, height: 50)
//        
//        loginButton.delegate = self
//        loginButton.readPermissions = ["email", "public_profile"]
//        
//        //add our custom fb login button here
//        let customFBButton = UIButton(type: .system)
//        customFBButton.backgroundColor = .blue
//        customFBButton.frame = CGRect(x: 16, y: 116, width: view.frame.width - 32, height: 50)
//        customFBButton.setTitle("Custom FB Login here", for: .normal)
//        customFBButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
//        customFBButton.setTitleColor(.white, for: .normal)
//        view.addSubview(customFBButton)
//        
//        customFBButton.addTarget(self, action: #selector(handleCustomFBLogin), for: .touchUpInside)
//    }
    
//    func handleCustomFBLogin() {
//        FBSDKLoginManager().logIn(withReadPermissions: ["email"], from: self) { (result, err) in
//            if err != nil {
//                print("Custom FB Login failed:", err)
//                return
//            }
//            
//            self.showEmailAddress()
//        }
//    }
    
//    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
//        print("Did log out of facebook")
//    }
//    
//    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
//        if error != nil {
//            print(error)
//            return
//        }
//        
//        showEmailAddress()
//    }
//    
//    func showEmailAddress() {
//        let accessToken = FBSDKAccessToken.current()
//        guard let accessTokenString = accessToken?.tokenString else { return }
//        
//        let credentials = FIRFacebookAuthProvider.credential(withAccessToken: accessTokenString)
//        FIRAuth.auth()?.signIn(with: credentials, completion: { (user, error) in
//            if error != nil {
//                print("Something went wrong with our FB user: ", error ?? "")
//                return
//            }
//            
//            print("Successfully logged in with our user: ", user ?? "")
//        })
//        
//        FBSDKGraphRequest(graphPath: "/me", parameters: ["fields": "id, name, email"]).start { (connection, result, err) in
//            
//            if err != nil {
//                print("Failed to start graph request:", err ?? "")
//                return
//            }
//            print(result ?? "")
//        }
//    }
}

