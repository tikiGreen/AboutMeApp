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
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 15
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user.userName, passwordTextField.text == user.password else {
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
        welcomeVC?.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func remindUserDetails(_ sender: UIButton) {
        
        let message = sender.tag == 0
        ? "User name: \(user.userName)"
        : "Password: \(user.password)"
       
        showAlert(title: "Напомнить данные пользователя", message: message)
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
    
    
}

