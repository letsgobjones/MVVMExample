//
//  DetailView.swift
//  MVVMExample
//
//  Created by Brandon Jones on 6/25/24.
//

import SwiftUI

struct DetailView: View {
  
  let productInfo: Product
  var body: some View {
    VStack {
      Text(productInfo.title)
        .font(.largeTitle)
        .multilineTextAlignment(.center)
 
      
      AsyncImage(url: URL(string: productInfo.image)) { image in
        image.resizable()
          .scaledToFit()
          .frame(maxWidth: 250, maxHeight: 250)
      } placeholder: {
        ProgressView()
      }
 
      Text("$\(productInfo.price, specifier: "%.2f")")
//      Text(productInfo.price as NSNumber, formatter: NumberFormatter.currency)
      Text(productInfo.description)
      
      
    }
    .padding()

  }
}

#Preview {
  DetailView(productInfo: Product.example)
}
