//
//  ViewController.swift
//  LoginApp
//
//  Created by Назар Ткаченко on 08.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //MARK: - Private properties
    private let user = User()
    
    //Mark: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.user = user.userName
    }
    
    //MARK: - IB Actions
    @IBAction func loginInButtonPressed() {
        guard userNameTextField.text == user.userName,
              passwordTextField.text == user.password else {
                  showAlert(
                    title: "Invalid login or password",
                    message: "Please, enter correct login and password",
                    textField: passwordTextField
                    )
                  return
              }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    
    @IBAction func showAuthorizationData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is User 😉")
        : showAlert(title: "Oops!", message: "Your password is Password 😉")
        
    }
    
    @IBAction func  unwindSeque(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
        
    }

}
// Mark: - Alert Controller
extension LoginViewController {
    private func showAlert(
        title: String,
        message: String,
        textField: UITextField? = nil
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

//MARK: - Keyboard
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField{
            passwordTextField.becomeFirstResponder()
        } else {
            loginInButtonPressed()
        }
        return true
    }
}
