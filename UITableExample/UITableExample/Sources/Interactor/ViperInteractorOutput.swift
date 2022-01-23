//
//  InteractorOutput.swift
//  UITableExample
//
//  Created by max on 23.01.2022.
//

import Foundation

protocol ViperInteractorOutput: AnyObject{
    
    func didFinishGettingDataForTable(_ models:[[DataForTable]])
}
