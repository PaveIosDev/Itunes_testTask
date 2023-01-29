//
//  AlbumsTableViewCell.swift
//  Itunes_testTask
//
//  Created by Павел Яковенко on 27.01.2023.
//

import Foundation
import UIKit

class AlbumsTableViewCell: UITableViewCell {
    
    private let albumLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.clipsToBounds = true
//        imageView.layer.cornerRadius = 32
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let albumNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name album name"
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let artistNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name artist name"
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let countTracksLabel: UILabel = {
        let label = UILabel()
        label.text = "20 tracks"
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var stackView = UIStackView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        albumLogo.layer.cornerRadius = albumLogo.frame.width / 2
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .clear
//        selectionStyle = .none
        
        addSubview(albumLogo)
        addSubview(albumNameLabel)

        stackView = UIStackView(arrangedSubviews: [artistNameLabel, countTracksLabel],
                                axis: .horizontal,
                                spacing: 10,
                                distribution: .equalCentering)
        
        addSubview(stackView)
    }

    
}

//MARK: - setConstraints

extension AlbumsTableViewCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            albumLogo.centerYAnchor.constraint(equalTo: centerYAnchor),
            albumLogo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            albumLogo.widthAnchor.constraint(equalToConstant: 60),
            albumLogo.heightAnchor.constraint(equalToConstant: 60),
            
            albumNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            albumNameLabel.leadingAnchor.constraint(equalTo: albumLogo.trailingAnchor, constant: 10),
            albumNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            stackView.topAnchor.constraint(equalTo: albumNameLabel.bottomAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: albumLogo.trailingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
    }
}
