//
//  Date + Ext.swift
//  Appetizers
//
//  Created by Евгений Митюля on 9/14/24.
//

import Foundation

extension Date {
    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundreadTenYearAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
