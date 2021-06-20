//
//  MainSearchViewController.swift
//  GithubRepositorySearcher
//
//  Created by 이현호 on 2021/06/19.
//

import UIKit

class MainSearchViewController: UIViewController {
    
    @IBOutlet weak var searchButton: GRButton!
    @IBOutlet weak var searchTextField: GRTextField!
    
    private var isRepositorynameEntered: Bool { return !searchTextField.text!.isEmpty }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchTextField.delegate = self
        
        configureCallToActionButton()
        createDismissKeyboardTapGusture()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        searchTextField.text = ""
    }
    
    private func createDismissKeyboardTapGusture() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    private func configureCallToActionButton() {
        searchButton.addTarget(self, action: #selector(pushDetailViewController), for: .touchUpInside)
    }
    
    @objc private func pushDetailViewController() {
        if isRepositorynameEntered {
            guard let searchKeyword = searchTextField.text else { return }
            let followerListVC = DetailTableViewController.instantiateFromStoryboard(repositoryName: searchKeyword)
            navigationController?.pushViewController(followerListVC, animated: true)
        } else {
            self.presentAlert(errorMessage: .emptyTextField)
        }
    }
}


extension MainSearchViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        searchTextField.resignFirstResponder()
        pushDetailViewController()
        
        return true
    }
}
