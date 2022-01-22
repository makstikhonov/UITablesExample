//
//  ViewController.swift
//  UITableExample
//
//  Created by max on 19.01.2022.
//

import UIKit

class ViewController: UIViewController     {
    
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        
        tableView.rowHeight = 40
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 70, bottom: 0, right: 0)
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(CustomCell.self, forCellReuseIdentifier: "cell")
        tableView.register(CustomCell2.self, forCellReuseIdentifier: "cell2")
        
        return tableView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(tableView)
        tableView.edgeTo(view)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
}
    
    extension ViewController: UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)

            print("Pressed Cell: \(dataArray[indexPath.section][indexPath.row].title)")
        }
        
    }
    
    extension ViewController: UITableViewDataSource {
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return dataArray.count
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return dataArray[section].count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            if dataArray[indexPath.section][indexPath.row].switchBox == true {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! CustomCell2
            
                cell.titleLabel.text = dataArray[indexPath.section][indexPath.row].title
                cell.iconView.image = UIImage(systemName: dataArray[indexPath.section][indexPath.row].image)
                cell.iconView.backgroundColor = dataArray[indexPath.section][indexPath.row].background
                return cell
            }
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
                
            cell.titleLabel.text = dataArray[indexPath.section][indexPath.row].title
            cell.iconView.image = UIImage(systemName: dataArray[indexPath.section][indexPath.row].image)
            cell.iconView.backgroundColor = dataArray[indexPath.section][indexPath.row].background
            return cell
        }
        

    }




