//
//  PetModel.swift
//  cadoptio
//
//  Created by Sena Kristiawan on 02/04/24.
//

import Foundation
struct PetModel{
    let name: String
    let type: String
    let distance: Double
    let weight: Double
    let gender: String
    
    static func generateLeppyData() -> PetModel {
        let pet = PetModel(name: "Leppy", type: "Domestic", distance: 1.0, weight: 3.0, gender: "Male")
        return pet
    }
    static func generateButetData() -> PetModel {
        let pet = PetModel(name: "Butet", type: "Persian", distance: 3.5, weight: 5.0, gender: "Female")
        return pet
    }
    static func generateSkyData() -> PetModel {
        let pet = PetModel(name: "Sky", type: "Domestic", distance: 8.5, weight: 4.9, gender: "Female")
        return pet
    }
    static func generateKentangData() -> PetModel {
        let pet = PetModel(name: "Kentang", type: "British Shorthair", distance: 8.5, weight: 4.2, gender: "Female")
        return pet
    }
    
}
