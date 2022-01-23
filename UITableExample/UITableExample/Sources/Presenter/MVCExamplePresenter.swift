//
//  MVCExamplePresenter.swift
//  UITableExample
//
//  Created by max on 22.01.2022.
//

import Foundation

protocol PresenterOutput: AnyObject {
    
    func configureViewOnLoad()
    
    func didPressedAction(txt: String)
}

protocol PresenterInput: AnyObject {
    
    func configureView(with models: [[DataForTable]])
    
    func navigateToSettings(txt: String)
}

class MVCExamplePresenter: PresenterOutput {

    weak var view: PresenterInput!
    var model: MVCExampleModel!
    
    func configureViewOnLoad() {

        let models = model.createModels()
        view.configureView(with: models)
    }
    
    func didPressedAction(txt: String) {
        view.navigateToSettings(txt: txt)
    }
    
}
