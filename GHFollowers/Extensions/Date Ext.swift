//
//  Date Ext.swift
//  GHFollowers
//
//  Created by Luca Nicolae Iatropulus on 20.01.2021.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
