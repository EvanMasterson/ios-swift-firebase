//
//  ViewController.swift
//  SwiftFirebaseDemo
//
//  Created by Masterson, Evan on 10/11/2018.
//  Copyright © 2018 Masterson, Evan. All rights reserved.
//

import UIKit
import Firebase
import FirebaseUI

class ViewController: UIViewController, FUIAuthDelegate {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    if Auth.auth().currentUser != nil {
      doNavigation()
    } else {
      let authUI = FUIAuth.defaultAuthUI()
      authUI?.delegate = self
      let providers: [FUIAuthProvider] = [
        // TODO: Facebook/Twitter credentials setup
        FUIGoogleAuth(),
        FUIFacebookAuth(),
        FUITwitterAuth(),
        FUIPhoneAuth(authUI:FUIAuth.defaultAuthUI()!)]
      
      authUI?.providers = providers
      let authViewController = authUI!.authViewController()
      present(authViewController, animated: true, completion: nil)
    }
  }
  
//  func authUI(_ authUI: FUIAuth, didSignInWith user: User?, error: Error?) {
//    // handle user and error as necessary
//    NSLog("HELLO")
////    doNavigation()
//  }

//  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    if segue.identifier == "NavigateToHome" {
//      if let nextView = segue.destination as? HomeViewController {
//        // Pass info to view
//      }
//    }
//  }
  
  func doNavigation() {
    performSegue(withIdentifier: "NavigateToHome", sender: self)
  }
}

