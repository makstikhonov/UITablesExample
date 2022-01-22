//
//  ViewController.swift
//  UITableExample
//
//  Created by max on 19.01.2022.
//

import UIKit

final class MVCExampleController: UIViewController     {
    
    var model: MVCExampleModel?
    
    private var mvcExampleView: MVCExampleView? {
        guard isViewLoaded else { return nil }
        return view as? MVCExampleView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = MVCExampleView()
        model = MVCExampleModel()
        configureView()
    }
}

private extension MVCExampleController {
    func configureView() {

        guard let models = model?.createModels() else { return }
        mvcExampleView?.configureView(with: models)
    }
}
