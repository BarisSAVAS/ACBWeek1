//
//  ProfileViewController.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 14.04.2023.
//

import UIKit
import SnapKit

class ProfileViewController: BaseTableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(ProfileTableViewCell.self, forCellReuseIdentifier: ProfileTableViewCell.identifier)
        tableView.register(TweetsTableViewCell.self, forCellReuseIdentifier: TweetsTableViewCell.identifier)
        view.addSubview(tableView)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    @objc func navigateToDetailScreen(){
        let detailScreenView = TweetViewController()
        navigationController?.pushViewController(detailScreenView, animated: true)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: ProfileTableViewCell.identifier, for: indexPath)
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: TweetsTableViewCell.identifier, for: indexPath)
        return cell
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            navigateToDetailScreen()
    }
}
