//
//  ViewController.swift
//  Platesy
//
//  Created by Chris Kuhn on 5/11/18.
//  Copyright © 2018 Sogeti USA. All rights reserved.
//

import UIKit
import AWSMobileClient
import AWSCore
import AWSAuthCore
import AWSAuthUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if !AWSSignInManager.sharedInstance().isLoggedIn {
            
            AWSAuthUIViewController.presentViewController(with: self.navigationController!,
                                                          configuration: nil,
                                                          completionHandler: { (provider: AWSSignInProvider, error: Error?) in
                                        if error != nil {
                                            print("Error occurred: \(String(describing: error))")
                                        } else {
                                            // Sign in successful.
                                        }
                })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

