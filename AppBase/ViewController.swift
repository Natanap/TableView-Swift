//
//  ViewController.swift
//  AppBase
//
//  Created by Natanael Alves Pereira on 24/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView = TableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .link
        view.addSubview(tableView)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }

    override func viewWillAppear(_ animated: Bool) {

            self.navigationController?.setNavigationBarHidden(true, animated: false)

        }
}

