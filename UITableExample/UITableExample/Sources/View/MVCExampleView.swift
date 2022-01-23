//
//  TableView.swift
//  UITableExample
//
//  Created by max on 20.01.2022.
//

import UIKit

protocol MVCExampleViewDelegate: AnyObject {
    
    func actionDidPressed(txt: String)
}

final class MVCExampleView: UIView {
    
    weak var delegate: MVCExampleViewDelegate?
    
    func configureView(with models: [[DataForTable]]) {
        self.models = models
    }
    
    init() {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        backgroundColor = .white
        addSubview(stackView)
        stackView.addArrangedSubview(tableView)
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    private var models = [[DataForTable]]()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.rowHeight = Metric.tableViewRowHeight
        tableView.separatorInset = UIEdgeInsets(top: 0, left: Metric.tableViewSeparatorLeftOffset, bottom: 0, right: 0)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(DefaultCell.self, forCellReuseIdentifier: "defaultCell")
        tableView.register(CellWithSwitch.self, forCellReuseIdentifier: "cellWithSwitсh")
        
        return tableView
    }()
    
    private lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 16
        view.distribution = .equalSpacing
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()
}
    
extension MVCExampleView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Pressed Cell: \(models[indexPath.section][indexPath.row].title )")
        
        delegate?.actionDidPressed(txt: models[indexPath.section][indexPath.row].title)
    }
    
}

extension MVCExampleView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if models[indexPath.section][indexPath.row].switchBox == true {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellWithSwitсh", for: indexPath) as! CellWithSwitch
            cell.configureView(with: models[indexPath.section][indexPath.row])
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell", for: indexPath) as! DefaultCell
        cell.configureView(with: models[indexPath.section][indexPath.row])
        return cell
    }
}

extension MVCExampleView {
    enum Metric {
        static let tableViewRowHeight: CGFloat = 40
        static let tableViewSeparatorLeftOffset: CGFloat = 70
    }
}
    
