//
//  ProfileTableViewCell.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 14.04.2023.
//

import UIKit
import SnapKit

class ProfileTableViewCell: UITableViewCell {
    // MARK: İdentifier
    static let identifier = "ProfileTableViewCell"
    // MARK: Views
    let profileView = ProfileView()
    // MARK: Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(profileView)
        constraintsUIComponents()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: UI Constraints
    private func constraintsUIComponents() {
        profileView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
