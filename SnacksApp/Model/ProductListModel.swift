//
//  ProductListModel.swift
//  YouTubeApp
//
//  Created by Yacobu.Gaddala on 05/12/24.
//

import Foundation
import SwiftUI


struct Product: Identifiable, Hashable {
    var id: UUID  = .init()
    var name: String
    var category: String
    var price: Int
    var color: Color
    var image: String
}


var productList = [Product(name: "Good Source",category: "Choco", price: 8, color: .yellow,image: "productImage"),
                   Product(name: "Good Source",category: "Choco", price: 8, color: .yellow,image: "productImage"),
                   Product(name: "Good Source",category: "Choco", price: 8, color: .yellow,image: "productImage"),
                   Product(name: "Good Source",category: "Choco", price: 8, color: .yellow,image: "productImage"),
                   Product(name: "Good Source",category: "Choco", price: 8, color: .yellow,image: "productImage"),
                   Product(name: "Good Source",category: "Choco", price: 8, color: .yellow,image: "productImage")
]

