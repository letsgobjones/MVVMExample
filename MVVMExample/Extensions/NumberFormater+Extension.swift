//
//  NumberFormater+Extension.swift
//  MVVMExample
//
//  Created by Brandon Jones on 7/2/24.
//

import Foundation

extension NumberFormatter {
  
  static var currency: NumberFormatter {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
  }
  
}
