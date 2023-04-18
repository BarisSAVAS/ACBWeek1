//
//  ProfileHeaderView.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 14.04.2023.
//

import UIKit
import SnapKit

class ProfileHeaderView: UIView {
     private let headerImage:UIImageView = {
        let headerImage = UIImageView()
        headerImage.image = UIImage(named: "headerView")
         headerImage.contentMode = .scaleToFill
        return headerImage
    }()
    private let profileImage: UIImageView = {
       let profileImage = UIImageView()
        profileImage.image = UIImage(named: "profileImageBuzzLightYear")
        profileImage.contentMode = .scaleAspectFill
        profileImage.clipsToBounds = true
        profileImage.layer.cornerRadius = 35
        return profileImage
    }()
    private let editProfile: UIButton = {
        let editProfile = UIButton()
        editProfile.setTitle("Edit Profile", for: .normal)
        editProfile.setTitleColor(UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1), for:.normal)
        editProfile.layer.borderWidth = 0.5
        editProfile.layer.cornerRadius = 10
        return editProfile
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
    private let bioLabel: UILabel = {
       let bioLabel = UILabel()
        bioLabel.text = "iOS Developer || Ali Can Batur's Student"
        bioLabel.font = .systemFont(ofSize: 16, weight: .regular)
        bioLabel.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        return bioLabel
    }()
    private let locationPin : UIImageView = {
       let locationPin = UIImageView()
        locationPin.image = UIImage(named: "LocationPin")
        locationPin.tintColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        return locationPin
    }()
    private let locationLabel: UILabel = {
       let locationLabel = UILabel()
        locationLabel.text = "Kasaba"
        locationLabel.font = .systemFont(ofSize: 16, weight: .medium)
        locationLabel.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        return locationLabel
    }()
    private let accountCreateDateIcon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named:"AccountCreateIcon")
        return icon
    }()
    private let accountCreateDate: UILabel = {
       let accountCreateDate = UILabel()
        accountCreateDate.text = "Agustos 2020 tarihinde katıldı"
        accountCreateDate.font = .systemFont(ofSize: 16, weight: .medium)
        accountCreateDate.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        return accountCreateDate
    }()
    private let followersNumber: UILabel = {
       let followersNumber = UILabel()
        followersNumber.text = "999"
        followersNumber.font = .systemFont(ofSize: 16, weight: .regular)
        followersNumber.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        return followersNumber
    }()
    private let followersLabel:UILabel = {
         let followersLabel = UILabel()
        followersLabel.text = "Followers"
        followersLabel.font = .systemFont(ofSize: 16, weight: .medium)
        followersLabel.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        return followersLabel
    }()
    private let followedNumber:UILabel = {
       let followedNumber = UILabel()
        followedNumber.text = "999"
        followedNumber.font = .systemFont(ofSize: 16, weight: .regular)
        followedNumber.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        return followedNumber
    }()
    private let followedLabel: UILabel = {
        let followedLabel = UILabel()
        followedLabel.text = "Followed"
        followedLabel.font = .systemFont(ofSize: 16, weight: .medium)
        followedLabel.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        return followedLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(headerImage)
        addSubview(profileImage)
        addSubview(editProfile)
        addSubview(userName)
        addSubview(userNickName)
        addSubview(bioLabel)
        addSubview(locationPin)
        addSubview(accountCreateDateIcon)
        addSubview(accountCreateDate)
        addSubview(locationLabel)
        addSubview(followersNumber)
        addSubview(followersLabel)
        addSubview(followedNumber)
        addSubview(followedLabel)
        headerViewConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    private func headerViewConstraints(){
        headerImage.snp.makeConstraints { make in
            make.height.equalTo(120)
            make.width.equalToSuperview()
            make.top.equalToSuperview()
        }
        profileImage.snp.makeConstraints { make in
            make.height.equalTo(70)
            make.width.equalTo(70)
            make.top.equalToSuperview().offset(90)
            make.leading.equalToSuperview().offset(10)
        }
        editProfile.snp.makeConstraints { make in
            make.width.equalTo(120)
            make.height.equalTo(30)
            make.top.equalTo(profileImage.snp.top).offset(40)
            make.trailing.equalToSuperview().offset(-10)
        }
        userName.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.bottom).offset(7)
            make.leading.equalTo(profileImage.snp.leading)
        }
        userNickName.snp.makeConstraints { make in
            make.top.equalTo(userName.snp.bottom).offset(5)
            make.leading.equalTo(userName.snp.leading)
        }
        bioLabel.snp.makeConstraints { make in
            make.top.equalTo(userNickName.snp.bottom).offset(5)
            make.leading.equalTo(userNickName.snp.leading)
        }
        locationPin.snp.makeConstraints { make in
            make.top.equalTo(bioLabel.snp.bottom).offset(5)
            make.size.equalTo(18)
            make.leading.equalTo(bioLabel.snp.leading)
        }
        locationLabel.snp.makeConstraints { make in
            make.top.equalTo(bioLabel.snp.bottom).offset(5)
            make.leading.equalTo(locationPin.snp.trailing).offset(5)
        }
        accountCreateDateIcon.snp.makeConstraints { make in
            make.size.equalTo(18)
            make.top.equalTo(locationPin.snp.bottom).offset(10)
            make.leading.equalTo(locationPin.snp.leading)
        }
        accountCreateDate.snp.makeConstraints { make in
            make.top.equalTo(locationPin.snp.bottom).offset(10)
            make.leading.equalTo(accountCreateDateIcon.snp.trailing).offset(10)
        }
        followersNumber.snp.makeConstraints { make in
            make.top.equalTo(headerImage.snp.bottom).offset(190)
            make.leading.equalTo(userName.snp.leading)
            make.bottom.equalToSuperview().offset(-5)
        }
        followersLabel.snp.makeConstraints { make in
            make.top.equalTo(followersNumber.snp.top)
            make.leading.equalTo(followersNumber.snp.trailing).offset(5)
            make.bottom.equalTo(followersNumber.snp.bottom)
        }
        followedNumber.snp.makeConstraints { make in
            make.top.equalTo(followersNumber.snp.top)
            make.leading.equalTo(followersLabel.snp.trailing).offset(10)
        }
        followedLabel.snp.makeConstraints { make in
            make.top.equalTo(followersNumber.snp.top)
            make.leading.equalTo(followedNumber.snp.trailing).offset(5)
        }
    }
}
