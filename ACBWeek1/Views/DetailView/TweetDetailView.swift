//
//  TweetDetailView.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 11.04.2023.
//
import UIKit
import SnapKit

class TweetDetailView: UIView {
    // MARK: Views
    let tweetDetailContentView = TweetDetailContentView()
    let tweetActionView = TweetActionView()
    let tweetActionButtonsView = TweetActionButtonsView()
    //let tweetFeedActionView = TweetFeedActionView()
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(tweetDetailContentView)
        addSubview(tweetActionView)
        addSubview(tweetActionButtonsView)
        //addSubview(tweetFeedActionView)
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
        tweetDetailContentView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
//        tweetFeedActionView.snp.makeConstraints { make in
//            make.top.equalToSuperview()
//            make.trailing.equalToSuperview()
//            make.leading.equalToSuperview()
//            make.bottom.equalToSuperview()
//        }
        tweetActionView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        tweetActionButtonsView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
    }

}
