//
//  ProductStore.swift
//  MVVMExample
//
//  Created by Brandon Jones on 7/2/24.
//

import Foundation

@MainActor
class ProductStore: ObservableObject {
  let webservice: Webservice
  @Published var products: [Product] = []
  
  
  
  init(webservice: Webservice) {
    self.webservice = webservice
  }
  
  func populateProducts() async throws {
      products = try await webservice.fetchProducts()
   
  }
}
