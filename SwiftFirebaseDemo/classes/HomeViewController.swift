//
//  HomeViewController.swift
//  SwiftFirebaseDemo
//
//  Created by Masterson, Evan on 24/11/2018.
//  Copyright © 2018 Masterson, Evan. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
      // Do any additional setup after loading the view.
  }
  
  @IBAction func didTapLogout(_ sender: UIBarButtonItem) {
    if Auth.auth().currentUser != nil {
      do {
        try Auth.auth().signOut()
        navigationController?.popToRootViewController(animated: true)
      } catch {
        NSLog("ERROR")
      }
    }
  }
}
