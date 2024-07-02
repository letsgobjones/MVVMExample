//
//  ContentView.swift
//  MVVMExample
//
//  Created by Brandon Jones on 6/25/24.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject private var productStore: ProductStore
  
  var body: some View {
    NavigationStack {
      VStack {
        List {
          ForEach(productStore.products, id: \.id) { product in
            NavigationLink( destination:  DetailView(productInfo: product)) {
              Text(product.title)
            }
          }
        }.listStyle(.plain)
        
      }
      .padding()
      
      .navigationTitle("Home")
    }.task {
      do {
        try await productStore.populateProducts()
      } catch {
        print(error)
      }
    }
    }
  }


#Preview {
  ContentView()
    .environmentObject(ProductStore(webservice: Webservice()))
}
