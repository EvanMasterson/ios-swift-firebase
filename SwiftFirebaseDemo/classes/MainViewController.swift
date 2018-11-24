//
//  ViewController.swift
//  SwiftFirebaseDemo
//
//  Created by Masterson, Evan on 10/11/2018.
//  Copyright © 2018 Masterson, Evan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var loginBtn: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }


  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "NavigateToHome" {
      if let nextView = segue.destination as? HomeViewController {
        // Pass info to view
      }
    }
  }
  
  func validateUser() {
    if !(emailTextField.text?.isEmpty)! && !(passwordTextField.text?.isEmpty)! {
      doNavigation()
    }
  }
  
  func doNavigation() {
    performSegue(withIdentifier: "NavigateToHome", sender: self)
  }
  
  @IBAction func didTapLogin(_ sender: UIButton) {
    validateUser()
  }
}

