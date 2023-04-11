//
//  TweetFeedActionView.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 11.04.2023.
//

import UIKit
import SnapKit

class TweetFeedActionView: UIView {
    // MARK: UI Components
    private let retweetsNumber: UILabel = {
       let retweetsNumber = UILabel()
        retweetsNumber.text = "456"
        retweetsNumber.font = .systemFont(ofSize: 16, weight: .bold)
        retweetsNumber.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        return retweetsNumber
    }()
    private let likesNumber: UILabel = {
       let likesNumber = UILabel()
        likesNumber.text = "45k"
        likesNumber.font = .systemFont(ofSize: 16, weight: .bold)
        likesNumber.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        return likesNumber
    }()
    private let quoteNumber: UILabel = {
       let quoteNumber = UILabel()
        quoteNumber.text = "12"
        quoteNumber.font  = .systemFont(ofSize: 16, weight: .bold)
        quoteNumber.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        return quoteNumber
    }()
    // MARK: UI Button Components
        //CommentButton
    private let commentButton: UIButton = {
        let commentButton = UIButton()
        commentButton.setImage(UIImage(named: "CommentButton"), for: .normal)
        commentButton.tintColor = UIColor(red: 0.4431, green: 0.4627, blue: 0.4824, alpha: 1) 
        return commentButton
    }()
        //RetweetButton
    private let retweetButton: UIButton = {
       let retweetButton = UIButton()
        retweetButton.setImage(UIImage(named: "RetweetButton"), for: .normal)
        retweetButton.tintColor = UIColor(red: 0.4431, green: 0.4627, blue: 0.4824, alpha: 1)
        return retweetButton
    }()
        //LikeButton
    private let likeButton: UIButton = {
       let likeButton = UIButton()
        likeButton.setImage(UIImage(named: "LikeButton"), for: .normal)
        likeButton.tintColor = UIColor(red: 0.4431, green: 0.4627, blue: 0.4824, alpha: 1)
        return likeButton
    }()
        //SharedButton
    private let sharedButton: UIButton = {
       let sharedButton = UIButton()
        sharedButton.setImage(UIImage(named: "ShareButton"), for: .normal)
        sharedButton.tintColor = UIColor(red: 0.4431, green: 0.4627, blue: 0.4824, alpha: 1)
        return sharedButton
    }()
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(commentButton)
        addSubview(quoteNumber)
        addSubview(retweetButton)
        addSubview(retweetsNumber)
        addSubview(likeButton)
        addSubview(likesNumber)
        addSubview(sharedButton)
        constraintsUIComponents()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: UI Constraints
    private func constraintsUIComponents() {
        
        commentButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(150)
            //make.height.width.equalTo(18)
            make.leading.equalToSuperview().offset(75)
            make.bottom.equalToSuperview().offset(-10)
        }
        quoteNumber.snp.makeConstraints { make in
            make.top.equalTo(commentButton.snp.top)
            make.leading.equalTo(commentButton.snp.trailing).offset(5)
            make.bottom.equalTo(commentButton.snp.bottom)
        }
        retweetButton.snp.makeConstraints { make in
            make.top.equalTo(commentButton.snp.top)
           // make.height.width.equalTo(18)
            make.leading.equalTo(quoteNumber.snp.trailing).offset(30)
            make.bottom.equalTo(commentButton.snp.bottom)
        }
        retweetsNumber.snp.makeConstraints { make in
            make.top.equalTo(commentButton.snp.top)
            make.leading.equalTo(retweetButton.snp.trailing).offset(5)
            make.bottom.equalTo(commentButton.snp.bottom)
        }
        likeButton.snp.makeConstraints { make in
            make.top.equalTo(commentButton.snp.top)
           // make.height.width.equalTo(18)
            make.leading.equalTo(retweetsNumber.snp.trailing).offset(30)
            make.bottom.equalTo(commentButton.snp.bottom)
        }
        likesNumber.snp.makeConstraints { make in
            make.top.equalTo(commentButton.snp.top)
            make.leading.equalTo(likeButton.snp.trailing).offset(5)
            make.bottom.equalTo(commentButton.snp.bottom)
        }
        sharedButton.snp.makeConstraints { make in
            make.top.equalTo(commentButton.snp.top)
           // make.height.width.equalTo(18)
            make.leading.equalTo(likesNumber.snp.trailing).offset(30)
            make.bottom.equalTo(commentButton.snp.bottom)
        }
        
    }
}
