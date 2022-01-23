//
//  ViperViewInput.swift
//  UITableExample
//
//  Created by max on 23.01.2022.
//

import Foundation

protocol ViperViewInput: AnyObject {
    
    func configureView(with models: [[DataForTable]])
}
