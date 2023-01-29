//
//  AlbumsTableViewCell.swift
//  Itunes_testTask
//
//  Created by Павел Яковенко on 27.01.2023.
//

import Foundation
import UIKit

class AlbumsTableViewCell: UITableViewCell {
    
    private let albumImageViewe: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.layer.cornerRadius = 25
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let albumNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name album name"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let artistNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name artist name"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let countTracksLabel: UILabel = {
        let label = UILabel()
        label.text = "20 tracks"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
}
