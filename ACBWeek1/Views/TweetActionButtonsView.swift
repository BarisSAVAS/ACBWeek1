//
//  TweetActionButtonsView.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 7.04.2023.
//

import UIKit
import SnapKit

class TweetActionButtonsView: UIView {
    
    // MARK: UI Components
        //CommentButton
    private let commentButton: UIButton = {
        let commentButton = UIButton()
        commentButton.setImage(UIImage(named: "CommentButton"), for: .normal)
        commentButton.tintColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        return commentButton
    }()
        //RetweetButton
    private let retweetButton: UIButton = {
       let retweetButton = UIButton()
        retweetButton.setImage(UIImage(named: "RetweetButton"), for: .normal)
        retweetButton.tintColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        return retweetButton
    }()
        //LikeButton
    private let likeButton: UIButton = {
       let likeButton = UIButton()
        likeButton.setImage(UIImage(named: "LikeButton"), for: .normal)
        likeButton.tintColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        return likeButton
    }()
        //SharedButton
    private let sharedButton: UIButton = {
       let sharedButton = UIButton()
        sharedButton.setImage(UIImage(named: "ShareButton"), for: .normal)
        sharedButton.tintColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        return sharedButton
    }()
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(commentButton)
        addSubview(retweetButton)
        addSubview(likeButton)
        addSubview(sharedButton)
        constraintsUIComponents()
        
    }
    //override func layoutSubviews() {
      //  super.layoutSubviews()
    //}
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: UI Constraints
    private func constraintsUIComponents() {
        commentButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(250)
            make.leading.equalToSuperview().offset(55)
            make.bottom.equalToSuperview().offset(-15)
        }
        retweetButton.snp.makeConstraints { make in
            make.top.equalTo(commentButton.snp.top)
            make.leading.equalTo(commentButton.snp.trailing).offset(55)
            make.bottom.equalToSuperview().offset(-15)
        }
        likeButton.snp.makeConstraints { make in
            make.top.equalTo(commentButton.snp.top)
            make.leading.equalTo(retweetButton.snp.trailing).offset(55)
            make.bottom.equalToSuperview().offset(-15)
        }
        sharedButton.snp.makeConstraints { make in
            make.top.equalTo(commentButton.snp.top)
            make.leading.equalTo(likeButton.snp.trailing).offset(55)
            make.bottom.equalToSuperview().offset(-15)
        }
    }
}
