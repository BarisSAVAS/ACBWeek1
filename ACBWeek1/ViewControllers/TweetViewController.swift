//
//  TweetViewController.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 11.04.2023.
//

import UIKit
import SnapKit

class TweetViewController:BaseTableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.register(DetailTweetsTableViewCell.self, forCellReuseIdentifier: DetailTweetsTableViewCell.identifier)
        tableView.register(TweetsTableViewCell.self, forCellReuseIdentifier: TweetsTableViewCell.identifier)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.row == 0 {
            let cell  = tableView.dequeueReusableCell(withIdentifier: DetailTweetsTableViewCell.identifier, for: indexPath)
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: TweetsTableViewCell.identifier, for: indexPath)
        return cell
    }
}
