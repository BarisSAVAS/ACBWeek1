//
//  TweetViewController.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 11.04.2023.
//

import UIKit
import SnapKit

class TweetViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(DetailTweetsTableViewCell.self, forCellReuseIdentifier: DetailTweetsTableViewCell.identifier)
        tableView.register(TweetsTableViewCell.self, forCellReuseIdentifier: TweetsTableViewCell.identifier)
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.row == 0 {
            let cell  = tableView.dequeueReusableCell(withIdentifier: DetailTweetsTableViewCell.identifier, for: indexPath)
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: TweetsTableViewCell.identifier, for: indexPath)
        return cell
    }
}
