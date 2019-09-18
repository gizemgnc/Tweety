//
//  ViewController.swift
//  Tweety
//
//  Created by Büşranur Yetişmiş on 3.09.2019.
//

import UIKit
import TwitterKit

class LoginViewController: UIViewController, TWTRComposerViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        149Gizem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        TWTRTwitter.sharedInstance().logIn { (session, error) in
            if session != nil {
                print("Login successfully.")
            } else {
                print(error.debugDescription)
            }
        }
        
        
    }
    
}

