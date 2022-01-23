//
//  Interactor.swift
//  UITableExample
//
//  Created by max on 23.01.2022.
//

import Foundation

class ViperInteractor: InteractorInput {
    
    weak var output: InteractorOutput!
    var model: ViperModel!
    
    func getDataForTable() {
        let models = model.createModels()
        
        output.didFinishGettingDataForTable(models)
    }
    
    
}
