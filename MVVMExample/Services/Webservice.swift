//
//  Webservice.swift
//  MVVMExample
//
//  Created by Brandon Jones on 6/25/24.
//

import Foundation



@MainActor
class Webservice: ObservableObject {
  enum NetworkError: Error {
    case invalidHTTPResponse
    case invalidURL
    case decodeError
    case invalidReponse
    
  }

  @Published var products: [Product] = []
  
  init() {
    Task {
      try await getProducts()
    }
  }
  
  func getProducts() async throws /*-> [Product] */{
    
    
    guard let url = URL(string: "https://fakestoreapi.com/products") else {
      throw NetworkError.invalidURL
    }
    
    
   let (data, response) =  try await URLSession.shared.data(from: url)
    
    guard let httpResponse = response as? HTTPURLResponse, 
            httpResponse.statusCode == 200 else {
     throw NetworkError.invalidHTTPResponse
    }
    
    
    guard let products = try?  JSONDecoder().decode([Product].self, from: data) else {
     throw NetworkError.decodeError
    }
    
    self.products = products
  }
}
