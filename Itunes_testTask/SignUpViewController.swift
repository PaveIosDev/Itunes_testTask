//
//  RegistrationViewController.swift
//  Itunes_testTask
//
//  Created by Павел Яковенко on 25.01.2023.
//

import UIKit

class SignUpViewController: UIPageViewController {

    private let regLabel: UILabel = {
        let label = UILabel()
        label.text = "Registration"
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
    }
    
}

//MARK: - setConstraints

extension SignUpViewController {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            regLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            regLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
