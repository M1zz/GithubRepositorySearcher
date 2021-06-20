//
//  UIViewController+Ext.swift
//  GithubRepositorySearcher
//
//  Created by 이현호 on 2021/06/21.
//

import UIKit

extension UIViewController {
    func presentAlert(errorMessage: GRError) {
        let alert = UIAlertController(title: "문제가 있습니다.", message: errorMessage.rawValue, preferredStyle: UIAlertController.Style.alert)
        let defaultAction = UIAlertAction(title: "OK", style: .destructive, handler : nil)
        alert.addAction(defaultAction)
        present(alert, animated: false, completion: nil)
    }
}

