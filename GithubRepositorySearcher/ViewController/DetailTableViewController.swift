//
//  DetailTableViewController.swift
//  GithubRepositorySearcher
//
//  Created by 이현호 on 2021/06/19.
//

import UIKit

final class DetailTableViewController: UIViewController {

    private var repositoryName: String = ""
    private var repositories: [Repository] = []
    private var searchResultCellIdentifier = "SearchResultCell"
    
    @IBOutlet weak var tableView: UITableView!
    
    static func instantiateFromStoryboard(repositoryName: String) -> DetailTableViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! DetailTableViewController
        viewController.repositoryName = repositoryName
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTableView()
        getRepositories(repositoryName: repositoryName)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.title = repositoryName
    }
    
    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.contentInsetAdjustmentBehavior = .never
    }
    
    private func getRepositories(repositoryName: String) {
        NetworkManager.shared.getRepositories(for: repositoryName) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let repositories):
                self.repositories = repositories.items
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}

extension DetailTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repositories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let repository = repositories[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: searchResultCellIdentifier, for: indexPath)
        
        cell.textLabel?.text = repository.name
        cell.detailTextLabel?.text = repository.owner?.login ?? "no owner"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}
