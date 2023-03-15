//
//  UserInfoViewController.swift
//  Itunes_testTask
//
//  Created by Павел Яковенко on 29.01.2023.
//

import UIKit

class UserInfoViewController: UIViewController {

    private let firstNamelabel: UILabel = {
        let label = UILabel()
        label.text = "First name"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let secondNamelabel: UILabel = {
        let label = UILabel()
        label.text = "Second name"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let phoneLabel: UILabel = {
        let label = UILabel()
        label.text = "Phone"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "E-mail"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let paswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var stackView = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setConstraints()
    }

    private func setupViews() {
        title = "Active User"
        view.backgroundColor = .white
        
        stackView = UIStackView(arrangedSubviews: [firstNamelabel,
                                                  secondNamelabel,
                                                  phoneLabel,
                                                  emailLabel,
                                                  paswordLabel],
                                axis: .vertical, spacing: 10, distribution: .fillProportionally)
        view.addSubview(stackView)
    }
}

//MARK: - setConstraints

extension UserInfoViewController {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
        
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        ])
    }
}
