//
//  TweetView.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 7.04.2023.
//

import UIKit

class TweetView: UIView {
    
    // MARK: Views
    let tweetContentView = TweetContentView()
    let tweetActionView = TweetActionView()
    let tweetActionButtonsView = TweetActionButtonsView()
    
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(tweetContentView)
        addSubview(tweetActionView)
        addSubview(tweetActionButtonsView)
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
