//
//  DetailTweetTableViewCell.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 11.04.2023.
//
import UIKit
import SnapKit

class DetailTweetsTableViewCell: UITableViewCell {
    // MARK: İdentifier
    static let identifier = "TweetsTableViewCell"
    // MARK: Views
    let tweetDetailView = TweetDetailView()
    // MARK: Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(tweetDetailView)
        constraintsUIComponents()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: UI Constraints
    private func constraintsUIComponents() {
        tweetDetailView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
