//
//  InventoryItem.swift
//  Plantry
//
//  Created by Emirates on 19/10/2022.
//
import Foundation

enum Category: String {
    case protein = "Meats-Protein"
    case vegetables = "Vegetables"
    case fruits = "Fruits"
    case spices = "Spices"
    case sauces = "Sauces"
    case grains = "Grains-Legumes"
    case snacks = "Snacks-Candy"
    case other = "Other"
}
enum Location: String {
    case fridge = "Fridge"
    case freezer = "Freezer"
    case cupboard = "Cupboards"
    case shelves = "Shelves"
    case other =  "Other"
}
enum Measure: String {
    case items = "Units"
    case servings = "Servings"
    case bags = "Bags"
    case grams = "g"
    case liters = "L"
}
struct InventoryItem: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var quantity: Double
    var category: Category
    var location: Location
    var unitMeasure: Measure
    var comments: String
}

let testDataItems = [
    InventoryItem(title: "Salt", quantity: 2, category: .spices, location: .other, unitMeasure: .bags, comments: "On countertop"),
    InventoryItem(title: "Oregano", quantity: 2, category: .spices, location: .cupboard, unitMeasure: .bags, comments: "On countertop"),
    InventoryItem(title: "Chicken Breast", quantity: 2, category: .protein, location: .freezer, unitMeasure: .items, comments: "Second drawer"),
    InventoryItem(title: "Pork Mince", quantity: 2, category: .protein, location: .freezer, unitMeasure: .bags, comments: "Second drawer")
]
