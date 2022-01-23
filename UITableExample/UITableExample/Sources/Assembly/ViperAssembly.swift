//
//  Assembly.swift
//  UITableExample
//
//  Created by max on 22.01.2022.
//

import Foundation
import UIKit

class ViperAssembly {
    
    class func configuredModule() -> UIViewController {
        
        let view = ViperViewController()
        
        let presenter = ViperPresenter()
        let interactor = ViperInteractor()
        let router = ViperRouter()
        let models = ViperModelImplementaion()
        
        view.output = presenter
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        interactor.model = models
        interactor.output = presenter
        
        router.view = view

        return view
    }
}
