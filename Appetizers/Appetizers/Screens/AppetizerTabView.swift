//
//  ContentView.swift
//  Appetizers
//
//  Created by Евгений Митюля on 9/5/24.
//

import SwiftUI

struct AppetizerTabView: View {

    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem { Label("Home", systemImage: "house") }
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.items.count)
        }
    }
}

#Preview {
    AppetizerTabView()
}
