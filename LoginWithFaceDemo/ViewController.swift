//
//  ViewController.swift
//  LoginWithFaceDemo
//
//  Created by Kittitat Rodphotong on 1/10/2560 BE.
//  Copyright © 2560 DevGo. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate {
    // MARK: - IBOutlet
    @IBOutlet weak var fbBtn: FBSDKLoginButton!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fbBtn.readPermissions = ["email"]
        fbBtn.delegate = self
        
        if let token = FBSDKAccessToken.current() {
            getUserData()
        }
    }
    
    // MARK: - Function
    func getUserData() {
        FBSDKGraphRequest(graphPath: "me",
                          parameters: ["fields": "id, name, first_name, last_name, picture.type(large), email"])
            .start(completionHandler: { (connection, result, error) -> Void in
                if (error == nil){
                    print(result!)
                }
        })
    }
    
    // MARK: - FBSDKLoginButtonDelegate
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        getUserData()
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        
    }
    
    func loginButtonWillLogin(_ loginButton: FBSDKLoginButton!) -> Bool {
        return true
    }
}

