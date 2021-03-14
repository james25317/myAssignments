//
//  ViewController.swift
//  SimpleLoginSignup
//
//  Created by James Hung on 2021/3/8.
//

import UIKit

class ViewController: UIViewController {
  
  var alertMessage: String? = ""
  
  
  @IBOutlet weak var checkLabel: UILabel!
  @IBOutlet weak var accountTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var checkTextField: UITextField!
  @IBOutlet weak var segmentedControl: UISegmentedControl!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    segmentedSetup()
  }
  
  
  @IBAction func showAction(_ sender: UIButton) {
    if segmentedControl.selectedSegmentIndex == 0 {
      goLogInFlow()
    } else if segmentedControl.selectedSegmentIndex == 1 {
      goSignUpFlow()
    }
    
    if alertMessage == "Login success!" || alertMessage == "Signup success!" {
      title = "Success"
    } else {
      title = "Error"
    }
    
    let alert = UIAlertController(title: title, message: alertMessage, preferredStyle: .alert)
    let action = UIAlertAction(title: "OK", style: .default, handler: {
      action in
      self.removeTextField()
    })
    alert.addAction(action)
    present(alert, animated: true, completion: nil)
    
  }
  
  
  @IBAction func segmentedAction(_ sender: UISegmentedControl) {
    determinFlow(sender)
    
    if actionFlow == .login {
      removeTextField()
      checkTextFieldDisable()
    } else if actionFlow == .signup {
      removeTextField()
      checkTextFieldEnable()
    }
    
  }
  
  enum segmentedFlow {
    case login
    case signup
    case none
  }
  
  var actionFlow: segmentedFlow = .none
  
  func determinFlow(_ sender: UISegmentedControl) {
    if sender.selectedSegmentIndex == 0 {
      actionFlow = .login
    } else if sender.selectedSegmentIndex == 1 {
      actionFlow = .signup
    }
  }
  

  func segmentedSetup() {
    segmentedControl.selectedSegmentIndex = 0
    segmentedControl.selectedSegmentTintColor = UIColor.black
    segmentedControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: UISegmentedControl.State.selected)
    checkTextFieldDisable()
  }
  
  
  func checkTextFieldEnable() {
    checkTextField.isEnabled = true
    checkLabel.isEnabled = true
    checkTextField.backgroundColor = UIColor.white
  }
  
  
  func checkTextFieldDisable() {
    checkTextField.isEnabled = false
    checkLabel.isEnabled = false
    checkTextField.backgroundColor = UIColor.gray
  }
  
  func removeTextField() {
    accountTextField.text?.removeAll()
    passwordTextField.text?.removeAll()
    checkTextField.text?.removeAll()
  }
  
  
  func goLogInFlow() {
    
    let correctAccount = "appworks_school@gmail.com"
    let correctPassword = "1234"
    
    switch accountTextField.hasText && passwordTextField.hasText {
    case true:
      if accountTextField.text == correctAccount &&
          passwordTextField.text == correctPassword {
        alertMessage = "Login success!"
      } else {
        alertMessage = "Login fail."
      }
    case false:
      if accountTextField.hasText == false {
        alertMessage = "Account should not be empty."
      } else if passwordTextField.hasText == false {
        alertMessage = "Password should not be empty."
      }
      
    }
    
  }
  
  
  func goSignUpFlow() {
    
    switch accountTextField.hasText && passwordTextField.hasText && checkTextField.hasText {
    case true:
      if passwordTextField.text == checkTextField.text {
        alertMessage = "Signup success!"
      } else {
        alertMessage = "Signup fail."
      }
    case false:
      if accountTextField.hasText == false {
        alertMessage = "Account should not be empty."
      } else if passwordTextField.hasText == false {
        alertMessage = "Password should not be empty."
      } else if checkTextField.hasText == false {
        alertMessage = "Check Password should not be empty."
      }
      
    }
    
  }
  
  
}

