//
//  ViewController.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 6.04.2023.
//

import UIKit

class BaseTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    let tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

}
class ViewController: BaseTableViewController{
    
    private func configureNavigationBar() {
        let logoImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 33, height: 33))
        logoImageView.contentMode = .scaleAspectFill
        logoImageView.image = UIImage(named: "TwitterBird")
        let middleView = UIView(frame: CGRect(x: 0, y: 0, width: 33, height: 33))
        middleView.addSubview(logoImageView)
        let profileImage = UIImage(systemName: "person")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: profileImage, style: .plain, target: self, action: #selector(navigateToProfileScreen))
        navigationItem.titleView = middleView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.register(TweetsTableViewCell.self, forCellReuseIdentifier: TweetsTableViewCell.identifier)
        configureNavigationBar()
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
    @objc func navigateToProfileScreen(){
        let profileScreenViewController = ProfileViewController()
        navigationController?.pushViewController(profileScreenViewController, animated: true)
     }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TweetsTableViewCell.identifier, for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let startTime = Date()
        navigateToDetailScreen()
        let finishTime = Date()
        let duration = finishTime.timeIntervalSince(startTime)
        print("\(duration)")
    }
}

