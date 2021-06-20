//
//  UITableView+Ext.swift
//  GithubRepositorySearcher
//
//  Created by 이현호 on 2021/06/21.
//

import UIKit

extension UITableView {
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
