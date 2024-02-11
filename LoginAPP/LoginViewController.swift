//
//  ViewController.swift
//  LoginAPP
//
//  Created by User on 11.02.2024.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    let userName = "1"
    let password = "1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 15
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func remindUserDetails(_ sender: UIButton) {
        var message = ""
        if sender == forgotUserNameButton {
           message = "User name: \(userName)"
        } else if sender == forgotPasswordButton {
           message = "Password: \(password)"
        }
       
        showAlert(title: "Напомнить данные пользователя", message: message)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == userName, passwordTextField.text == password else {
            showAlert(
                title: "Ошибка авторизации",
                message: "Не верный логин или пароль"
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userName = userNameTextField.text
    }
    
    private func showAlert(title: String, message: String) {
        let forgotAlert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "Ok", style: .default)
        
        forgotAlert.addAction(okAction)
        present(forgotAlert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
}

