//
//  ViewController.swift
//  MVVM-Tutorial
//
//  Created by Adonis Rumbwere on 19/3/2021.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource {
    
    private var models = [Person]()
    
    
    
    private let tableView: UITableView = {
        let table = UITableView()
        //Register a cell into the table
        table.register(PersonFollowingTableViewCell.self,
                       forCellReuseIdentifier: PersonFollowingTableViewCell.identifier
        )
        
        return table
        
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureModels()
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.frame = view.bounds
        
    }
    
    private func configureModels(){
        let names = [
            "Joe","Dana","Jeff","Jenny","Emmily","Adonis"
        ]
        
        for name in names {
            models.append(Person(name: name))
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
       guard let cell = tableView.dequeueReusableCell(
            withIdentifier: PersonFollowingTableViewCell.identifier,
                for: indexPath) as? PersonFollowingTableViewCell else {
        return UITableViewCell()
       }
        //cell.textLabel?.text = model.name
        cell.configure(with: PersonFollowingTableViewCellViewModel(with: model))
        return cell
    }
}

