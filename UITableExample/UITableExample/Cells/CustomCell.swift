//
//  CustomCell.swift
//  UITableExample
//
//  Created by max on 19.01.2022.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    
    let cellView: UIView = {
        let view = UIView()
        return view
    }()
    
    let iconView: UIImageView = {
        let icon = UIImageView()
        icon.contentMode = .center
        icon.layer.cornerRadius = 5
        icon.tintColor = .white

        return icon
    }()
    
    let chevronView: UIImageView = {
        let image = UIImage(systemName: "chevron.right")
        let icon = UIImageView(image: image)
        icon.contentMode = .center
        icon.tintColor = .systemGray

        return icon
    }()
    
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "text"
        label.textColor = .darkGray
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
        
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        cellSetup()
        cellSetup2()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func cellSetup() {
        
        contentView.addSubview(cellView)
        cellView.edgeTo(contentView)
        
        cellView.addSubview(iconView)
        iconView.translatesAutoresizingMaskIntoConstraints = false
        
        iconView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        iconView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        iconView.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        iconView.leftAnchor.constraint(equalTo:  cellView.leftAnchor, constant: 20).isActive = true
        
        
        cellView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerYAnchor.constraint(equalTo: iconView.centerYAnchor).isActive = true
        titleLabel.leftAnchor.constraint(equalTo:  iconView.leftAnchor, constant: 50).isActive = true
    }
    
    func cellSetup2() {
        
        cellView.addSubview(chevronView)
        chevronView.translatesAutoresizingMaskIntoConstraints = false
        chevronView.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        chevronView.leftAnchor.constraint(equalTo:  cellView.rightAnchor, constant: -30).isActive = true
    }
    
}

