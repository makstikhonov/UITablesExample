//
//  ViperViewOutput.swift
//  UITableExample
//
//  Created by max on 23.01.2022.
//

import Foundation

protocol ViperViewOutput: AnyObject {
    
    func configureViewOnLoad()
    func didPressedAction(txt: String)
}
