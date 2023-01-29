//
//  AuthViewController.swift
//  Itunes_testTask
//
//  Created by Павел Яковенко on 25.01.2023.
//

import UIKit

class AuthViewController: UIViewController {

    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter email"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter password"
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitle("SignIN", for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let signUpButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .purple
        button.setTitle("SignUP", for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc private func signUpButtonTapped() {
        let signUpViewController = SignUpViewController()
        self.present(signUpViewController, animated: true)
    }
    
    @objc private func signInButtonTapped() {
        let navVC = UINavigationController(rootViewController: AlbumsViewController())
        navVC.modalPresentationStyle = .fullScreen
        self.present(navVC, animated: true)
    }
    
    private var textFieldsStackView = UIStackView()
    private var buttonsStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
        setDelegates()
    }

    private func setupViews() {
        
        textFieldsStackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField],
                                          axis: .vertical,
                                          spacing: 10,
                                          distribution: .fillProportionally)
        
        buttonsStackView = UIStackView(arrangedSubviews: [signInButton, signUpButton],
                                          axis: .horizontal,
                                          spacing: 10,
                                          distribution: .fillProportionally)
        
        view.addSubview(scrollView)
        scrollView.addSubview(backgroundView)
        backgroundView.addSubview(loginLabel)
        backgroundView.addSubview(textFieldsStackView)
        backgroundView.addSubview(buttonsStackView)
    }
    
    private func setDelegates() {
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
}

//MARK: - UITextFieldDelegate

extension AuthViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        return true
    }
}

//MARK: - setConstraints

extension AuthViewController {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        
            backgroundView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            backgroundView.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor),
            backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor),
            backgroundView.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            textFieldsStackView.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            textFieldsStackView.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor),
            textFieldsStackView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 20),
            textFieldsStackView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -20),
            
            loginLabel.bottomAnchor.constraint(equalTo: textFieldsStackView.topAnchor, constant: -30),
            loginLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            
            signInButton.heightAnchor.constraint(equalToConstant: 40),
            signUpButton.heightAnchor.constraint(equalToConstant: 40),
            
            buttonsStackView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 20),
            buttonsStackView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -20),
            buttonsStackView.topAnchor.constraint(equalTo: textFieldsStackView.bottomAnchor, constant: 30)
        ])
    }
}
