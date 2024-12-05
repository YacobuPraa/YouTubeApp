//
//  Categorymodel.swift
//  YouTubeApp
//
//  Created by Yacobu.Gaddala on 05/12/24.
//

import SwiftUI

struct Categorymodel: Identifiable, Hashable {
    var id: UUID = .init()
    var icon: String
    var title: String
}

var categoryList:[Categorymodel] = [
    Categorymodel(icon: "", title: "All"),
    Categorymodel(icon: "choco", title: "Choco"),
    Categorymodel(icon: "wafles", title: "Wafles"),
    Categorymodel(icon: "toffee", title: "Toffee")
]
