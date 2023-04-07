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
        profileImage.layer.cornerRadius = 30
        return profileImage
    }()
    
    private let userName: UILabel = {
       let userName = UILabel()
        userName.text = "Baris SAVAS"
        userName.font = UIFont(name: ".SFProText-Regular", size: 19)
        return userName
    }()
    
    private let userNickName: UILabel = {
       let userNickName = UILabel()
        userNickName.text = "@barissavass"
        userNickName.font = UIFont(name: ".SFProText-Regular", size: 19)
        return userNickName
    }()
    
    private let optionsButton: UIButton = {
       let optionsButton = UIButton()
        return optionsButton
    }()
    
     let tweetsLabel: UILabel = {
       let tweetsLabel = UILabel()
        tweetsLabel.text  = "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur"
        tweetsLabel.numberOfLines = 0
        tweetsLabel.font = UIFont(name: ".SFProText-Regular", size: 19)
        return tweetsLabel
    }()
    
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
            make.top.equalToSuperview().offset(10)
            make.leading.equalToSuperview().offset(15)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        userName.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.top).offset(5)
            make.leading.equalTo(profileImage.snp.trailing).offset(15)
        }
        userNickName.snp.makeConstraints { make in
            make.top.equalTo(userName.snp.top)
            make.leading.equalTo(userName.snp.trailing).offset(15)
        }
        optionsButton.snp.makeConstraints { make in
            make.top.equalTo(userName.snp.top)
            make.leading.equalTo(userNickName.snp.trailing).offset(15)
        }
        tweetsLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.bottom).offset(15)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(-5)
        }
    }
}
