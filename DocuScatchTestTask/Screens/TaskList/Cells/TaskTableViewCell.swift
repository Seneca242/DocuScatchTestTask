//
//  TaskTableViewCell.swift
//  DocuScatchTestTask
//
//  Created by Dmitry Dmitry on 14.10.2023.
//

import UIKit
import SnapKit

class TaskTableViewCell: UITableViewCell {
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    let checkBoxButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "circle"), for: .normal)
        button.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .selected)
        button.tintColor = .systemGreen
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(checkBoxButton)
        
        titleLabel.snp.makeConstraints { make in
            make.leading.equalTo(contentView.snp.leadingMargin).offset(16)
            make.centerY.equalToSuperview()
        }
        
        checkBoxButton.snp.makeConstraints { make in
            make.trailing.equalTo(contentView.snp.trailingMargin).inset(16)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(30)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
