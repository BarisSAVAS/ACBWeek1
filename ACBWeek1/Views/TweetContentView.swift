//
//  TweetContentView.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 7.04.2023.
//

import UIKit
import SnapKit

class TweetContentView: UIView {
    // MARK: UI Components
    
    private let profileImage: UIImageView = {
       let profileImage = UIImageView()
        profileImage.image = UIImage(named: "profileImageBuzzLightYear")
        profileImage.clipsToBounds = true
        profileImage.layer.cornerRadius = 40
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
        tweetsLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing"
        tweetsLabel.numberOfLines = 0
        tweetsLabel.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 19.0)
        return tweetsLabel
    }()
    //Date
    // MARK: LifeCycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(profileImage)
        addSubview(userName)
        addSubview(userNickName)
        addSubview(optionsButton)
        addSubview(tweetsLabel)
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
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalToSuperview().offset(10)
            make.leading.equalToSuperview().offset(15)
        }
        userName.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.top).offset(15)
            make.leading.equalTo(profileImage.snp.trailing).offset(15)
        }
        userNickName.snp.makeConstraints { make in
            make.top.equalTo(userName.snp.top)
            make.leading.equalTo(userName.snp.trailing).offset(15)
        }
        tweetsLabel.snp.makeConstraints { make in
            make.top.equalTo(userNickName.snp.bottom).offset(45)
            make.leading.equalToSuperview().offset(10)
            //make.trailing.equalToSuperview().offset(-5)
        }
    }
}
