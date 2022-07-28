//
//  ForgetPasswordViewController.swift
//  FinalProject
//
//  Created by Dong Duong V. on 7/22/22.
//

import UIKit

final class ForgetPasswordViewController: UIViewController {

    var viewModel: ForgetPasswordViewModel = ForgetPasswordViewModel()

    @IBOutlet private weak var signInButton: UIButton!
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var submitButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.addTarget(self, action: #selector(emailTextFieldDidChange(_:)), for: .editingChanged)
    }

    @objc func emailTextFieldDidChange(_ textField: UITextField) {
        viewModel.updateEmail(email: textField.text ?? "" )
        updateSubmitButton()
    }

    private func updateSubmitButton() {
        if viewModel.isValidEmail {
            submitButton.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
            submitButton.backgroundColor = UIColor(red: 0.196, green: 0.718, blue: 0.408, alpha: 1)
            submitButton.layer.cornerRadius = 12
            submitButton.clipsToBounds = true
            viewModel.getNewEmail()

        } else {

            submitButton.backgroundColor = UIColor(red: 0.957, green: 0.957, blue: 0.957, alpha: 1)
        }
    }

    @IBAction func submitButtonTouchupInsides(_ sender: Any) {
        let successEmail = NotificationViewController()
        present(successEmail, animated: true, completion: .none)
        updateSubmitButton()
    }

    @IBAction func signInButton(_ sender: Any) {

    }
}