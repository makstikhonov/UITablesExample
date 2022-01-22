//
//  CustomCell2.swift
//  UITableExample
//
//  Created by max on 19.01.2022.
//
import UIKit

class CellWithSwitch: DefaultCell {
    
  override func additionalCellSetup() {
      cellView.addSubview(switchInCell)
      switchInCell.translatesAutoresizingMaskIntoConstraints = false
      switchInCell.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
      switchInCell.leftAnchor.constraint(equalTo:  cellView.rightAnchor, constant: Metric.switchLeftOffset).isActive = true
    }
    
    let switchInCell: UISwitch = {
        let switchInCell = UISwitch()
        return switchInCell
    }()
}

extension CellWithSwitch {
    enum Metric {
        static let switchLeftOffset: CGFloat = -70
    }
}
