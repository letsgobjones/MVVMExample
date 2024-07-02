//
//  ContentView.swift
//  MVVMExample
//
//  Created by Brandon Jones on 6/25/24.
//

import SwiftUI

struct ContentView: View {
  @StateObject var service = Webservice()
  
  
  var body: some View {
    NavigationStack {
      VStack {
        List {
          ForEach(service.products, id: \.id) { product in
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
        try await service.getProducts()
      } catch {
        print(error)
      }
    }
    }
  }


#Preview {
    ContentView()
}
