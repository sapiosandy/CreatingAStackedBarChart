//
//  ContentView.swift
//  CreatingAStackedBarChart
//
//  Created by Sandra Gomez on 4/10/24.
//

import SwiftUI
import Charts

struct SalesPeople: Identifiable {
    var name: String
    var itemSold: String
    var sales: Int
    var id = UUID()
}

var mySalesArray: [SalesPeople] = [
    .init(name: "Oscar", itemSold: "Car", sales: 50),
    .init(name: "Oscar", itemSold: "Truck", sales: 43),
    .init(name: "Oscar", itemSold: "Loan", sales: 62),
    .init(name: "Fran", itemSold: "Car", sales: 26),
    .init(name: "Fran", itemSold: "Truck", sales: 67),
    .init(name: "Fran", itemSold: "Loan", sales: 38),
    .init(name: "Billy", itemSold: "Car", sales: 40),
    .init(name: "Billy", itemSold: "Truck", sales: 82),
    .init(name: "Billy", itemSold: "Loan", sales: 24)
]

struct ContentView: View {
    var body: some View {
        VStack {
            Chart(mySalesArray) { x in
                BarMark(x: .value("Name", x.name),
                         y: .value("Sales", x.sales))
                .foregroundStyle(by: .value("Items Sold", x.itemSold))}
        }
    }
}

#Preview {
    ContentView()
}
