//
//  AWSCredentialManager.swift
//  Platesy
//
//  Created by Chris Kuhn on 5/11/18.
//  Copyright © 2018 Sogeti USA. All rights reserved.
//

import Foundation
import AWSCore
import AWSAuthCore
import AWSMobileClient
import AWSAuthUI
import AWSMobileClient
import AWSUserPoolsSignIn
import AWSFacebookSignIn
import AWSGoogleSignIn

typealias CredentialSignoutHandler = ((_ success: Bool) -> Void)

struct AWSCredentialManager {
    
    
    
    func signout(completion: @escaping CredentialSignoutHandler){
        AWSSignInManager.sharedInstance().logout(completionHandler: {(result: Any?, error: Error?) in
            completion(error == nil)
        })
    }
}
