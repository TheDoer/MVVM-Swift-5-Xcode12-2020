//
//  ViewController.swift
//  MVVM-Tutorial
//
//  Created by Adonis Rumbwere on 19/3/2021.
//

import UIKit

enum Gender {
    case male, female, unspecified
}

struct Person {
    let name: String
    let birthDate: Date?
    let middleName:String?
    let address: String?
    let gender: Gender
}


class ViewController: UIViewController, UITableViewDataSource {
    
    private var models = [Person]()
    
    
    
    private let tableView: UITableView = {
        let table = UITableView()
        
        //Register a cell into the table
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
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
            "Joe","Dana","Jeff","Jenny","Emmily"
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = model.name
        return cell
    }


}

