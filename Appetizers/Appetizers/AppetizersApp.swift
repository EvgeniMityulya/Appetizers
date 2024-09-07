//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Евгений Митюля on 9/5/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
