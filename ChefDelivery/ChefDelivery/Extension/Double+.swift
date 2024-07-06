//
//  Double+.swift
//  ChefDelivery
//
//  Created by Ewelyn Silva on 16/02/24.
//

import Foundation

extension Double {
    func formatPrince() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
