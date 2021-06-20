//
//  DetailTableViewController.swift
//  GithubRepositorySearcher
//
//  Created by 이현호 on 2021/06/19.
//

import UIKit

class DetailTableViewController: UIViewController {

    var repositoryName: String = ""
    
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
        tableView.backgroundColor = .red
        navigationItem.title = repositoryName
    }
}
