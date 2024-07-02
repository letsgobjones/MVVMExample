//
//  Product.swift
//  MVVMExample
//
//  Created by Brandon Jones on 6/25/24.
//

import Foundation



// MARK: - Product
struct Product: Codable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: Category
    let image: String
    let rating: Rating
}

enum Category: String, Codable {
    case electronics = "electronics"
    case jewelery = "jewelery"
    case menSClothing = "men's clothing"
    case womenSClothing = "women's clothing"
}

// MARK: - Rating
struct Rating: Codable {
    let rate: Double
    let count: Int
}


extension Product {
  static var example: Product { Product(id: 25, title: "Coding Life", price: 30, description: "How to be miserable", category: .electronics, image: "https://images.unsplash.com/photo-1713691132931-1cc66e362cdc?q=80&w=3108&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", rating: Rating(rate: 3, count: 5) )}
  

}
