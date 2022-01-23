//
//  Router.swift
//  UITableExample
//
//  Created by max on 23.01.2022.
//

import Foundation
import UIKit

class ViperRouter: ViperRouterInput {
    
    weak var view: UIViewController!
    var settingsView = ViperViewSettings()
    
    func navigateToSettings(txt: String) {
        settingsView.setText(txt: txt)
        view.navigationController?.pushViewController(settingsView, animated: true)
    }
    
}
