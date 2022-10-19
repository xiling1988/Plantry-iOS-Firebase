//
//  InventoryItem.swift
//  Plantry
//
//  Created by Emirates on 19/10/2022.
//
import Foundation

enum Category: String {
    case protein = "Meats/Protein"
    case vegetables = "Vegetables"
    case fruits = "Fruits"
    case spices = "Spices"
    case sauces = "Sauces"
    case grains = "Grains/Legumes"
    case snacks = "Snacks/Candy"
    case other = "Other"
}
enum Location: String {
    case fridge = "Fridge"
    case freezer = "Freezer"
    case cupboard = "Cupboards"
    case shelves = "Shelves"
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
    var quantity: String
    var category: Category
    var location: Location
    var unitMeasure: String
    var comments: String
}

