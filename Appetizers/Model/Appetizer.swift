//
//  Appetizer.swift
//  Appetizers
//
//  Created by PowerMac on 03.05.2024.
//

import Foundation


struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable{
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Beef",
                                           description: "Meal",
                                           price: 10.99,
                                           imageURL: "",
                                           calories: 150,
                                           protein: 99,
                                           carbs: 20)
    
    static let sampleAppetizer2 = Appetizer(id: 0002,
                                           name: "Beef",
                                           description: "Meal",
                                           price: 10.99,
                                           imageURL: "",
                                           calories: 150,
                                           protein: 99,
                                           carbs: 20)
    
    static let sampleAppetizer3 = Appetizer(id: 0003,
                                           name: "Beef",
                                           description: "Meal",
                                           price: 10.99,
                                           imageURL: "",
                                           calories: 150,
                                           protein: 99,
                                           carbs: 20)
    
    static let sampleAppetizer4 = Appetizer(id: 0004,
                                           name: "Beef",
                                           description: "Meal",
                                           price: 10.99,
                                           imageURL: "",
                                           calories: 150,
                                           protein: 99,
                                           carbs: 20)
    
    static let appetizers: [Appetizer] = [sampleAppetizer, sampleAppetizer2,sampleAppetizer3, sampleAppetizer4]
}


