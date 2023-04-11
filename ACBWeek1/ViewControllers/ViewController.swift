//
//  ViewController.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 6.04.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(TweetsTableViewCell.self, forCellReuseIdentifier: TweetsTableViewCell.identifier)
        return tableView
    }()
    private func configureNavigationBar() {
        let logoImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 33, height: 33))
        logoImageView.contentMode = .scaleAspectFill
        logoImageView.image = UIImage(named: "TwitterBird")
        let middleView = UIView(frame: CGRect(x: 0, y: 0, width: 33, height: 33))
        middleView.addSubview(logoImageView)
        navigationItem.titleView = middleView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
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
   // @objc func navigateToProfileScreen(){
     //   let profileScreenViewController = ProfileViewController()
       // navigationController?.pushViewController(profileScreenViewController, animated: true)
    // }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TweetsTableViewCell.identifier, for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigateToDetailScreen()
    }
}

