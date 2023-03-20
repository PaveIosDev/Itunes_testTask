//
//  AlbumsViewController.swift
//  Itunes_testTask
//
//  Created by Павел Яковенко on 27.01.2023.
//

import UIKit

class AlbumsViewController: UIViewController {

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(AlbumsTableViewCell.self, forCellReuseIdentifier: "idTableViewCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private let searchController = UISearchController(searchResultsController: nil)
    
    var albums = [Album]()
    var timer: Timer?
    
    private let idTableViewCell = "idTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
        setDelegates()
        
        setNavigationBar()
        setupSearchController()
    }
    
    private func setupViews() {
        view.addSubview(tableView)
    }
    
    private func setDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
        
        searchController.searchBar.delegate = self
    }
    
    private func setNavigationBar() {
        navigationItem.title = "Albums"
        
        navigationItem.searchController = searchController
        
        let userInfoButton = createCustomButton(selector: #selector(userInfoButtonTapped))
        navigationItem.rightBarButtonItem = userInfoButton
    }
    
    private func setupSearchController() {
        searchController.searchBar.placeholder = "Search"
        searchController.obscuresBackgroundDuringPresentation = false
    }
    
    @objc private func userInfoButtonTapped() {
        let userInfoViewController = UserInfoViewController()
        navigationController?.pushViewController(userInfoViewController, animated: true)
    }
    
    private func fetchAlbums(albumName: String) {
        
        let urlString = "https://itunes.apple.com/search?term=Sheffield&entity=album&attribute=albumTerm"
        
        NetworkDataFetch.shared.fetchAlbum(urlString: urlString) { [weak self] albumModel, error in
            if error == nil {
                
                guard let albumModel = albumModel else { return }
                self?.albums = albumModel.results
                print(self?.albums)
            } else {
                print(error!.localizedDescription)
            }
        }

    }
    
}


//MARK: - UITableViewDataSource

extension AlbumsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        albums.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         guard let cell = tableView.dequeueReusableCell(withIdentifier: idTableViewCell, for: indexPath) as? AlbumsTableViewCell else {
            return UITableViewCell()
        }
        let album = albums[indexPath.row]
        return cell
    }
}

//MARK: - UITableViewDelegate

extension AlbumsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailAlbumViewController = DetailAlbumViewController()
        navigationController?.pushViewController(detailAlbumViewController, animated: true)
    }
}

//MARK: - UISearchBarDelegate

extension AlbumsViewController: UISearchBarDelegate {

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText != "" {
            timer?.invalidate()
            timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false, block: { [weak self] _ in
                self?.fetchAlbums(albumName: searchText)
            })
        }
    }
}

//MARK: - setConstraints

extension AlbumsViewController {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
        
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        
        ])
    }
}
