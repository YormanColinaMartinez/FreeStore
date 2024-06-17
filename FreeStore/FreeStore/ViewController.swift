//
//  ViewController.swift
//  FreeStore
//
//  Created by Apple on 15/6/24.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Private Properties -
    private let logoImageView: UIImageView = {
        let imageView: UIImageView = UIImageView(frame: .zero)
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "meli-logo-icon")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    private let emailTextField: UITextField = {
        let textField: UITextField = UITextField()
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 8
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.placeholder = "example@linkedin.com"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    private let passwordTextField: UITextField = {
        let textField: UITextField = UITextField(frame: .zero)
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 8
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    private let emailTitleLabel: UILabel = {
        let label: UILabel = UILabel(frame: .zero)
        label.font = .boldSystemFont(ofSize: 16)
        label.textColor = .black
        label.text = LoginStrings.emailTitleLabel.localized
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let passwordTitleLabel: UILabel = {
        let label: UILabel = UILabel(frame: .zero)
        label.font = .boldSystemFont(ofSize: 16)
        label.textColor = .black
        label.text = LoginStrings.passwordTitleLabel.localized
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let signInNamesView: UIView = {
        let view: UIView = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let nameTextField: UITextField = {
        let textField: UITextField = UITextField(frame: .zero)
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 8
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    private let nameTitleLabel: UILabel = {
        let label: UILabel = UILabel(frame: .zero)
        label.font = .boldSystemFont(ofSize: 16)
        label.textColor = .black
        label.text = LoginStrings.nameTitleLabel.localized
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let lastNameTextField: UITextField = {
        let textField: UITextField = UITextField(frame: .zero)
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 8
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    private let lastNameTitleLabel: UILabel = {
        let label: UILabel = UILabel(frame: .zero)
        label.font = .boldSystemFont(ofSize: 16)
        label.textColor = .black
        label.text = LoginStrings.lastNameTitleLabel.localized
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let loginUpButton: UIButton = {
        let button: UIButton = UIButton(frame: .zero)
        button.layer.cornerRadius = 10
        button.backgroundColor = .blue
        button.setTitle("Login Up", for: .normal)
        button.titleLabel?.textColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let signInButton: UIButton = {
        let button: UIButton = UIButton(frame: .zero)
        button.layer.cornerRadius = 10
        button.backgroundColor = .red
        button.setTitle("Sign Up", for: .normal)
        button.titleLabel?.textColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private var signInSelected: Bool = true

    //MARK: - Lyfecycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        addConstraintsToLogin()
    }
    
    //MARK: - Private Methods -
    private func addSubviews() {
        if signInSelected {
            view.addSubview(signInNamesView)
            signInNamesView.addSubview(nameTextField)
            signInNamesView.addSubview(nameTitleLabel)
            signInNamesView.addSubview(lastNameTextField)
            signInNamesView.addSubview(lastNameTitleLabel)
        }
        view.addSubview(logoImageView)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(emailTitleLabel)
        view.addSubview(passwordTitleLabel)
        view.addSubview(loginUpButton)
        view.addSubview(signInButton)
    }
    
    private func addConstraintsToLogin() {
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            ])
        
        if signInSelected {
            NSLayoutConstraint.activate([
                nameTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 30),
                nameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                nameTextField.heightAnchor.constraint(equalToConstant: 30),
                nameTextField.widthAnchor.constraint(equalToConstant: 200),
                
                nameTitleLabel.bottomAnchor.constraint(equalTo: nameTextField.topAnchor, constant: -3),
                nameTitleLabel.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
                
                lastNameTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 35),
                lastNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                lastNameTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),
                lastNameTextField.widthAnchor.constraint(equalTo: nameTextField.widthAnchor),
                
                lastNameTitleLabel.bottomAnchor.constraint(equalTo: lastNameTextField.topAnchor, constant: -3),
                lastNameTitleLabel.leadingAnchor.constraint(equalTo: lastNameTextField.leadingAnchor),
                
                emailTextField.topAnchor.constraint(equalTo: lastNameTextField.bottomAnchor, constant: 35)
            ])
        } else {
            NSLayoutConstraint.activate([
                emailTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 30)
            ])
        }

        NSLayoutConstraint.activate([
            emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 30),
            emailTextField.widthAnchor.constraint(equalToConstant: 200),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 35),
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            passwordTextField.widthAnchor.constraint(equalTo: emailTextField.widthAnchor),
            
            emailTitleLabel.bottomAnchor.constraint(equalTo: emailTextField.topAnchor, constant: -3),
            emailTitleLabel.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            
            passwordTitleLabel.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -3),
            passwordTitleLabel.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            
            loginUpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
            loginUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            loginUpButton.heightAnchor.constraint(equalToConstant: 50),
            loginUpButton.widthAnchor.constraint(equalToConstant: 100),
            
            signInButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
            signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            signInButton.heightAnchor.constraint(equalToConstant: 50),
            signInButton.widthAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    private func addConstraintsToSignUp() {

    }
}

