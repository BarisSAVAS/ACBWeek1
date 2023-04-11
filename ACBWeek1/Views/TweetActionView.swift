//
//  TweetActionView.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 7.04.2023.
//

import UIKit
import SnapKit

class TweetActionView:UIView {
    // MARK: UI Components
    private let retweetsNumber: UILabel = {
       let retweetsNumber = UILabel()
        retweetsNumber.text = "456"
        retweetsNumber.font = UIFont(name: ".SFProText-Regular", size: 19)
        return retweetsNumber
    }()
    private let retweetsLabel: UILabel = {
       let retweetsLabel = UILabel()
        retweetsLabel.text = "Retweets"
        retweetsLabel.font = UIFont(name: ".SFProText-Regular", size: 19)
        return retweetsLabel
    }()
    
    private let likesNumber: UILabel = {
       let likesNumber = UILabel()
        likesNumber.text = "45k"
        likesNumber.font = UIFont(name: ".SFProText-Regular", size: 19)
        return likesNumber
    }()
    private let likesLabel: UILabel = {
       let likesLabel = UILabel()
        likesLabel.text = "Likes"
        likesLabel.font = UIFont(name: ".SFProText-Regular", size: 19)
        return likesLabel
    }()
    private let quoteNumber: UILabel = {
       let quoteNumber = UILabel()
        quoteNumber.text = "12"
        quoteNumber.font  = UIFont(name: ".SFProText-Regular", size: 19)
        return quoteNumber
    }()
    private let quoteLabel: UILabel = {
       let quoteLabel = UILabel()
        quoteLabel.text = "Quote"
        quoteLabel.font = UIFont(name: ".SFProText-Regular", size: 19)
        return quoteLabel
    }()
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(retweetsNumber)
        addSubview(retweetsLabel)
        addSubview(likesNumber)
        addSubview(likesLabel)
        addSubview(quoteNumber)
        addSubview(quoteLabel)
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
        
        retweetsNumber.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(195)
            make.leading.equalToSuperview().offset(10)
            //make.bottom.equalToSuperview().offset(-5)
        }
        retweetsLabel.snp.makeConstraints { make in
            make.top.equalTo(retweetsNumber.snp.top)
            make.leading.equalTo(retweetsNumber.snp.trailing).offset(7)
            //make.bottom.equalToSuperview().offset(-5)
        }
        likesNumber.snp.makeConstraints { make in
            make.top.equalTo(retweetsNumber.snp.top)
            make.leading.equalTo(retweetsLabel.snp.trailing).offset(15)
            //make.bottom.equalToSuperview().offset(-5)
        }
        likesLabel.snp.makeConstraints { make in
            make.top.equalTo(retweetsNumber.snp.top)
            make.leading.equalTo(likesNumber.snp.trailing).offset(7)
            //make.bottom.equalToSuperview().offset(-5)
        }
        quoteNumber.snp.makeConstraints { make in
            make.top.equalTo(retweetsNumber.snp.top)
            make.leading.equalTo(likesLabel.snp.trailing).offset(15)
            //make.bottom.equalToSuperview().offset(-5)
        }
        quoteLabel.snp.makeConstraints { make in
            make.top.equalTo(retweetsNumber.snp.top)
            make.leading.equalTo(quoteNumber.snp.trailing).offset(7)
            //make.bottom.equalToSuperview().offset(-5)
        }
        
    }
}
