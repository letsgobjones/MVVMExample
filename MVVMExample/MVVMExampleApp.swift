//
//  MVVMExampleApp.swift
//  MVVMExample
//
//  Created by Brandon Jones on 6/25/24.
//

import SwiftUI

@main
struct MVVMExampleApp: App {
  @StateObject private var productStore = ProductStore(webservice: Webservice())
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(productStore)
    }
  }
}
