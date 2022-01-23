//
//  Assembly.swift
//  UITableExample
//
//  Created by max on 22.01.2022.
//

import Foundation
import UIKit

class MVCExampleAssembly {
    
    class func configuredModule() -> UIViewController {
        
        let view = MVCExampleController()
        
        let presenter = MVCExamplePresenter()
        let models = MVCExampleModelImplementation()
        
        view.output = presenter
        
        presenter.view = view
        presenter.model = models
        
        return view
    }
}
