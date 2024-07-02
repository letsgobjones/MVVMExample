//
//  ProductListViewModel.swift
//  MVVMExample
//
//  Created by Brandon Jones on 6/25/24.
//

//import Foundation
//
//
//class ProductListViewModel: ObservableObject {
//  
//  @Published var products: [ProductViewModel] = []
//  let webservice: Webservice
//  
//  
//  init(webservice: Webservice) {
//    self.webservice = webservice
//  }
//  
//  
//  func populateProducts() async {
//    do {
//      let products = try await webservice.getProducts()
//    } catch {
//      print(error)
//    }
//    
//  }
//  
//}
//
//
//
//
//
//
//
//struct ProductViewModel {
//  private var product: Product
//  init(product: Product) {
//    self.product = product
//  }
//  
//  var id: Int {
//    product.id
//  }
//
//  var title: String {
//    product.title
//  }
//  var price: Double {
//    product.price
//  }
//  var description: String {
//    product.description
//  }
//  var category: Category {
//    product.category
//  }
//  var image: String {
//    product.image
//  }
//  var rating: Rating {
//    product.rating
//  }
//}
