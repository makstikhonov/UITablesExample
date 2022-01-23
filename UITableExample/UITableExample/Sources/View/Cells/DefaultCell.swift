//
//  CustomCell.swift
//  UITableExample
//
//  Created by max on 19.01.2022.
//
import UIKit

class DefaultCell: UITableViewCell {
    
    func configureView(with models: DataForTable) {
          
        titleLabel.text = models.title
        iconView.image = UIImage(systemName: models.image)
        iconView.backgroundColor = models.background
    }
    
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
        label.font = UIFont.boldSystemFont(ofSize: Metric.titleLabelFontSize)
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        cellSetup()
        additionalCellSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func cellSetup() {
        
        contentView.addSubview(cellView)
        cellView.edgeTo(contentView)
        
        cellView.addSubview(iconView)
        iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.widthAnchor.constraint(equalToConstant: Metric.iconWidth).isActive = true
        iconView.heightAnchor.constraint(equalToConstant: Metric.iconHeight).isActive = true
        iconView.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        iconView.leftAnchor.constraint(equalTo:  cellView.leftAnchor, constant: Metric.iconLeftOffset).isActive = true
        
        cellView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerYAnchor.constraint(equalTo: iconView.centerYAnchor).isActive = true
        titleLabel.leftAnchor.constraint(equalTo:  iconView.leftAnchor, constant: Metric.titleLabelLeftOffset).isActive = true
    }
    
    func additionalCellSetup() {
        
        cellView.addSubview(chevronView)
        chevronView.translatesAutoresizingMaskIntoConstraints = false
        chevronView.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        chevronView.leftAnchor.constraint(equalTo:  cellView.rightAnchor, constant: Metric.chevronViewLeftOffset).isActive = true
    }    
}

extension DefaultCell {
    enum Metric {
        static let iconHeight: CGFloat = 30
        static let iconWidth: CGFloat = 30
        static let iconLeftOffset: CGFloat = 20
        static let titleLabelLeftOffset: CGFloat = 50
        static let chevronViewLeftOffset: CGFloat = -30
        static let titleLabelFontSize: CGFloat = 16
    }
}
