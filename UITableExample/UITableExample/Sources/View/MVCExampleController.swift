//
//  ViewController.swift
//  UITableExample
//
//  Created by max on 19.01.2022.
//

import UIKit

final class MVCExampleController: UIViewController, PresenterInput, MVCExampleViewDelegate     {
    
    var output: PresenterOutput!
    var mainView = MVCExampleView()
    var settingsView = MVCSettingsViewController()

    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.delegate = self
        output.configureViewOnLoad()
    }
        
    func configureView(with models: [[DataForTable]]) {
        mainView.configureView(with: models)
    }
    
    func navigateToSettings(txt: String) {
        settingsView.setText(txt: txt)
        navigationController?.pushViewController(settingsView, animated: true)
    }
    
    func actionDidPressed(txt: String) {
        output.didPressedAction(txt: txt)
    }
    
    
}
