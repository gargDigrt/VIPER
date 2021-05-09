//
//  View.swift
//  VIPER
//
//  Created by Vivek on 09/05/21.
//

import UIKit


//ViewController
//Protocol
//Ref to Presenter

protocol AnyView {
    var presenter: AnyPresenter? {get set}
    
    func update(with users: [User])
    func update(with error: String)
}

class UserViewController: UIViewController, AnyView {
    
    var presenter: AnyPresenter?
    
    private let userTableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.isHidden = true
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userTableView.backgroundColor = .systemIndigo
        view.addSubview(userTableView)
        userTableView.delegate = self
        userTableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        userTableView.frame = view.bounds
    }
    
    func update(with users: [User]) {
        
    }
    
    func update(with error: String) {
    
    }
    
    
}


extension UserViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
