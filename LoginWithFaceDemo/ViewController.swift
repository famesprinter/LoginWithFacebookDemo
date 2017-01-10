//
//  ViewController.swift
//  LoginWithFaceDemo
//
//  Created by Kittitat Rodphotong on 1/10/2560 BE.
//  Copyright © 2560 DevGo. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("SDK version \(FBSDKSettings.sdkVersion())")
    }
    
    // MARK: - IBAction
    @IBAction func loginWithFacebook() {
        
    }
}

