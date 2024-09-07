//
//  OrderView.swift
//  Appetizers
//
//  Created by Евгений Митюля on 9/5/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Order placed")
                    } label: {
//                        APButton(title: )
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(
                        imageName: "empty-order",
                        message: "You have no items in your order. Please add an appetizer!"
                    )
                }
                
            }
            .navigationTitle("📋 Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
}

//#Preview {
//    OrderView()
//}
