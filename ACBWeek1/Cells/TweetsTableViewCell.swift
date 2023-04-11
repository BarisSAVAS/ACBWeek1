//
//  TweetsTableViewCell.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 10.04.2023.
//

import UIKit
import SnapKit

class TweetsTableViewCell: UITableViewCell {
    // MARK: İdentifier
    static let identifier = "TweetsTableViewCell"
    // MARK: Views
    let tweetView = TweetView()
    
    // MARK: Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(tweetView)
        constraintsUIComponents()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: UI Constraints
    private func constraintsUIComponents() {
        tweetView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
