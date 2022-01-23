//
//  MVCSettingsViewController.swift
//  UITableExample
//
//  Created by max on 23.01.2022.
//

import UIKit

class MVCSettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "text"
        label.textColor = .darkGray
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    private func setup() {
        view.addSubview(textLabel)
        view.backgroundColor = .white
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func setText(txt: String){
        textLabel.text = txt
    }
    
    
}
