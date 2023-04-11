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
    //let tweetActionView = TweetActionView()
    let tweetActionButtonsView = TweetActionButtonsView()
    let tweetFeedActionView = TweetFeedActionView()
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(tweetContentView)
        //addSubview(tweetActionView)
        //addSubview(tweetActionButtonsView)
        addSubview(tweetFeedActionView)
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
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        tweetFeedActionView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview()
        }
       // tweetActionView.snp.makeConstraints { make in
         //   make.top.equalToSuperview()
           // make.leading.equalToSuperview()
            //make.trailing.equalToSuperview()
           // make.bottom.equalToSuperview()
       // }
//        tweetActionButtonsView.snp.makeConstraints { make in
//            make.top.equalToSuperview()
//            make.bottom.equalToSuperview()
//            make.leading.equalToSuperview()
//            make.trailing.equalToSuperview()
//        }
    }

}
