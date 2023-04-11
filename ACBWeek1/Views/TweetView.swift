//
//  TweetView.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 7.04.2023.
//

import UIKit
import SnapKit

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
        constraintsViews()
        
    }
  //  override func layoutSubviews() {
    //    super.layoutSubviews()
   // }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: Views Constraints
    
    private func constraintsViews () {
        tweetContentView.snp.makeConstraints { make in
            make.top.equalToSuperview()
        }
        tweetActionView.snp.makeConstraints { make in
            make.top.equalTo(tweetContentView.snp.bottom)
        }
        tweetActionButtonsView.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
        }
    }

}
