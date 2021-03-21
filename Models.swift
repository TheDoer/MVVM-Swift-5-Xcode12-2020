//
//  Models.swift
//  MVVM-Tutorial
//
//  Created by Adonis Rumbwere on 19/3/2021.
//

import Foundation

enum Gender {
    case male, female, unspecified
}

struct Person {
    let name: String
    let birthDate: Date?
    let middleName:String?
    let address: String?
    let gender: Gender
    
    var username = "Kanye West"
    
    init(name: String,
         birthDate: Date? = nil,
         middleName: String? = nil,
         address: String? = nil,
         gender: Gender = .unspecified
         ) {
        
        self.name = name
        self.birthDate = birthDate
        self.address = address
        self.middleName = middleName
        self.gender = gender
        
    
    }
    
}


