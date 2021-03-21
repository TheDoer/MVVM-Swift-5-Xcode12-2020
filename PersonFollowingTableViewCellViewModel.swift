//
//  PersonFollowingTableViewCellViewModel.swift
//  MVVM-Tutorial
//
//  Created by Adonis Rumbwere on 19/3/2021.
//

import UIKit

struct PersonFollowingTableViewCellViewModel {
    let name: String
    let username: String
    let currentlyFollowing: Bool
    let image: UIImage?
    
    init(with model: Person) {
        name = model.name
        username = model.username
        currentlyFollowing = false
        image = UIImage(systemName: "person")
        
    }
}


