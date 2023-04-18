//
//  TweetDetailContentView.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 11.04.2023.
//

import UIKit
import SnapKit

class TweetDetailContentView: UIView {
    // MARK: UI Components
    private let profileImage: UIImageView = {
           let profileImage = UIImageView()
            profileImage.image = UIImage(named: "profileImageBuzzLightYear")
            profileImage.clipsToBounds = true
            profileImage.layer.cornerRadius = 25
            return profileImage
        }()
    private let userName: UILabel = {
           let userName = UILabel()
            userName.text = "Baris SAVAS"
            userName.font = .systemFont(ofSize: 16, weight: .bold)
            userName.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
            return userName
        }()
    private let userNickName: UILabel = {
           let userNickName = UILabel()
            userNickName.text = "@denemedeneme"
            userNickName.font = .systemFont(ofSize: 16, weight: .medium)
            userNickName.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
            return userNickName
        }()
    private let optionsButton: UIButton = {
           let optionsButton = UIButton()
            return optionsButton
        }()
    private let tweetsLabel: UILabel = {
           let tweetsLabel = UILabel()
            tweetsLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing orem ipsum dolor sit amet, consectetur adipiscing orem ipsum dolor sit amet, consectetur adipiscing orem ipsum"
            tweetsLabel.numberOfLines = 0
            tweetsLabel.font = .systemFont(ofSize: 18, weight: .light)
            tweetsLabel.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
            return tweetsLabel
        }()
    private let dateLabel: UILabel = {
        let date = UILabel()
        let nowDate = Date()
        date.text = "\(nowDate.description)"
        date.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        date.font = .systemFont(ofSize: 16, weight: .light)
        return date
    }()
    private let statisticsNumber: UILabel = {
       let statisticsNumber = UILabel()
        statisticsNumber.text = "2342"
        statisticsNumber.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        statisticsNumber.font = .systemFont(ofSize: 16, weight: .bold)
        return statisticsNumber
    }()
    private let statisticsLabel: UILabel = {
       let statisticsLabel = UILabel()
        statisticsLabel.text = "Viewers"
        statisticsLabel.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        return statisticsLabel
    }()
    // MARK: LifeCycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(profileImage)
        addSubview(userName)
        addSubview(userNickName)
        addSubview(optionsButton)
        addSubview(tweetsLabel)
        addSubview(dateLabel)
        addSubview(statisticsNumber)
        addSubview(statisticsLabel)
        constraintsUIComponents()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: Components Constraints
    private func constraintsUIComponents() {
        profileImage.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(50)
            make.top.equalToSuperview().offset(10)
            make.leading.equalToSuperview().offset(15)
        }
        userName.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.top)
            make.leading.equalTo(profileImage.snp.trailing).offset(15)
        }
        userNickName.snp.makeConstraints { make in
            make.top.equalTo(userName.snp.bottom).offset(2)
            make.leading.equalTo(userName.snp.leading)
        }
        tweetsLabel.snp.makeConstraints { make in
            make.top.equalTo(userNickName.snp.bottom).offset(15)
            make.leading.equalTo(profileImage.snp.leading)
            make.trailing.equalToSuperview().offset(-3)
        }
        dateLabel.snp.makeConstraints { make in
            make.top.equalTo(tweetsLabel.snp.bottom).offset(15)
            make.leading.equalTo(tweetsLabel.snp.leading)
        }
        statisticsNumber.snp.makeConstraints { make in
            make.top.equalTo(dateLabel.snp.top)
            make.leading.equalTo(dateLabel.snp.trailing).offset(15)
        }
        statisticsLabel.snp.makeConstraints { make in
            make.top.equalTo(statisticsNumber.snp.top)
            make.leading.equalTo(statisticsNumber.snp.trailing).offset(5)
        }
    }
}
