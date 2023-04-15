//
//  TweetActionView.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 7.04.2023.
//

import UIKit
import SnapKit

class TweetActionView : UIView {
    // MARK: UI Components
    private let retweetsNumber: UILabel = {
       let retweetsNumber = UILabel()
        retweetsNumber.text = "456"
        retweetsNumber.font = .systemFont(ofSize: 16, weight: .bold)
        retweetsNumber.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        return retweetsNumber
    }()
    private let retweetsLabel: UILabel = {
       let retweetsLabel = UILabel()
        retweetsLabel.text = "Retweets"
        retweetsLabel.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        retweetsLabel.font = .systemFont(ofSize: 16, weight: .light)
        return retweetsLabel
    }()
    private let likesNumber: UILabel = {
       let likesNumber = UILabel()
        likesNumber.text = "45k"
        likesNumber.font = .systemFont(ofSize: 16, weight: .bold)
        likesNumber.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        return likesNumber
    }()
    private let likesLabel: UILabel = {
       let likesLabel = UILabel()
        likesLabel.text = "Likes"
        likesLabel.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        likesLabel.font = .systemFont(ofSize: 16, weight: .light)
        return likesLabel
    }()
    private let quoteNumber: UILabel = {
       let quoteNumber = UILabel()
        quoteNumber.text = "12"
        quoteNumber.font  = .systemFont(ofSize: 16, weight: .bold)
        quoteNumber.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        return quoteNumber
    }()
    private let quoteLabel: UILabel = {
       let quoteLabel = UILabel()
        quoteLabel.text = "Quote"
        quoteLabel.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        quoteLabel.font = .systemFont(ofSize: 16, weight: .light)
        return quoteLabel
    }()

    
    private let separatorLine: UILabel = {
        let separatorLine = UILabel()
        separatorLine.frame = CGRect(x: 0, y: 0, width: 340, height: 0)
        separatorLine.backgroundColor = .white
         
        var stroke = UIView()
        stroke.bounds = separatorLine.bounds.insetBy(dx: -0.17, dy: -0.17)
        stroke.center = separatorLine.center
        separatorLine.addSubview(stroke)
        separatorLine.bounds = separatorLine.bounds.insetBy(dx: -0.17, dy: -0.17)
        stroke.layer.borderWidth = 0.63
        stroke.layer.borderColor = UIColor(red: 0.741, green: 0.773, blue: 0.804, alpha: 1).cgColor
        return separatorLine
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
        addSubview(separatorLine)
        constraintsUIComponents()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: UI Constraints
    private func constraintsUIComponents() {
        separatorLine.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(200)
            make.leading.equalToSuperview().offset(40)
        }
        retweetsNumber.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(215)
            make.leading.equalToSuperview().offset(40)
            //make.bottom.equalToSuperview().offset(-15)
        }
        retweetsLabel.snp.makeConstraints { make in
            //make.bottom.equalToSuperview().offset(-15)
            make.top.equalToSuperview().offset(215)
            make.leading.equalTo(retweetsNumber.snp.trailing).offset(7)
        }
        likesNumber.snp.makeConstraints { make in
            //make.bottom.equalToSuperview().offset(-15)
            make.top.equalToSuperview().offset(215)
            make.leading.equalTo(retweetsLabel.snp.trailing).offset(15)
        }
        likesLabel.snp.makeConstraints { make in
            //make.bottom.equalToSuperview().offset(-15)
            make.top.equalToSuperview().offset(215)
            make.leading.equalTo(likesNumber.snp.trailing).offset(7)
        }
        quoteNumber.snp.makeConstraints { make in
            //make.bottom.equalToSuperview().offset(-15)
            make.top.equalToSuperview().offset(215)
            make.leading.equalTo(likesLabel.snp.trailing).offset(15)
        }
        quoteLabel.snp.makeConstraints { make in
            //make.bottom.equalToSuperview().offset(-15)
            make.top.equalToSuperview().offset(215)
            make.leading.equalTo(quoteNumber.snp.trailing).offset(7)
        }
    }
}
