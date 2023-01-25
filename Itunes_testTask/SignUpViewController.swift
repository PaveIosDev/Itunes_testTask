//
//  RegistrationViewController.swift
//  Itunes_testTask
//
//  Created by Павел Яковенко on 25.01.2023.
//

import UIKit

class SignUpViewController: UIPageViewController {

//    private let scrollView: UIScrollView = {
//        let scrollView = UIScrollView()
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        return scrollView
//    }()
//
//    private let backgroundView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .white
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
    
    private let regLabel: UILabel = {
        let label = UILabel()
        label.text = "Registration"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let firstNameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "First Name"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let firstNameValidLabel: UILabel = {
        let label = UILabel()
        label.text = "Required field"
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.addSubview(regLabel)
        view.addSubview(firstNameTextField)
        view.addSubview(firstNameValidLabel)
    }
    
}

//MARK: - setConstraints

extension SignUpViewController {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            regLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            regLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            firstNameTextField.topAnchor.constraint(equalTo: regLabel.bottomAnchor, constant: 30),
            firstNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            firstNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            firstNameTextField.heightAnchor.constraint(equalToConstant: 40),
            
            firstNameValidLabel.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 10),
            firstNameValidLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12)
        ])
    }
}
