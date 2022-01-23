//
//  ViewController.swift
//  UITableExample
//
//  Created by max on 19.01.2022.
//

import UIKit


class ViperViewController: UIViewController, ViperViewDelegate {
  
    var output: ViperViewOutput!
    var mainView = ViperView()

    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.configureViewOnLoad()
        mainView.delegate = self
    }
            
    func actionDidPressed(txt: String) {
        output.didPressedAction(txt: txt)
    }
    
}

extension ViperViewController: ViperViewInput {
    
    func configureView(with models: [[DataForTable]]) {
        mainView.configureView(with: models)
    }
}
