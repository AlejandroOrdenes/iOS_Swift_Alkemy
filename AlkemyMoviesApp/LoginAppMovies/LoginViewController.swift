//
//  LoginViewController.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 20-10-21.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var logoApp: UILabel!
    @IBOutlet weak var emailUser: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailUser.delegate = self
        emailUser.text = ""

    }
    
    @IBAction func enterButton(_ sender: Any) {
        if let userEmail = emailUser.text, !userEmail.isEmpty {
            presentBarController()
        } else {
           presentNousernameAlert()
    }
    
    }
    private func presentNousernameAlert() {
        let alert = UIAlertController(title: "Alerta", message: "Ingrese un nombre de Usuario!!!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    private func presentBarController() {
        let tabBarViewController = TabBarViewController()
        tabBarViewController.modalPresentationStyle = .overFullScreen
        self.present(tabBarViewController, animated: true)
    }
}
