//
//  ProfileView.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 14.04.2023.
//

import UIKit
import SnapKit

class ProfileView: UIView {
    
    let profileHeaderView = ProfileHeaderView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(profileHeaderView)
        constraintsProfileView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    private func constraintsProfileView() {
        profileHeaderView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
    }
}
