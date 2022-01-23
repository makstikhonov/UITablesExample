//
//  MVCExamplePresenter.swift
//  UITableExample
//
//  Created by max on 22.01.2022.
//

import Foundation

class ViperPresenter: ViperViewOutput, ViperInteractorOutput {
    
    weak var view: ViperViewInput!
    var interactor: ViperInteractorInput!
    var router: ViperRouterInput!
    
   //MARK: ViewOutput
    func configureViewOnLoad() {
        interactor.getDataForTable()
    }
    
    func didPressedAction(txt: String) {
        router.navigateToSettings(txt: txt)
    }
    
    //MARK: InteractorOutput
    func didFinishGettingDataForTable(_ models: [[DataForTable]]) {
        view.configureView(with: models)
    }
}
