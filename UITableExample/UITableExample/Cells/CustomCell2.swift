//
//  CustomCell2.swift
//  UITableExample
//
//  Created by max on 19.01.2022.
//

import Foundation
import UIKit

class CustomCell2: CustomCell {
    
  override func cellSetup2() {
        
        cellView.addSubview(switchInCell)
        switchInCell.translatesAutoresizingMaskIntoConstraints = false
        switchInCell.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        switchInCell.leftAnchor.constraint(equalTo:  cellView.rightAnchor, constant: -70).isActive = true
    }
    
    let switchInCell: UISwitch = {
        let switchInCell = UISwitch()
        return switchInCell
    }()
}

