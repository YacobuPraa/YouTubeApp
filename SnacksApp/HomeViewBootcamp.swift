//
//  HomeViewBootcamp.swift
//  YouTubeApp
//
//  Created by Yacobu.Gaddala on 05/12/24.
//

import SwiftUI

struct HomeViewBootcamp: View {
    @State var selectedItem = ""
    var body: some View {
        ScrollView {
            VStack {
                ///Header
                HStack {
                    Text("Order From The Best Of **Snacks**")
                        .font(.system(size: 30))
                        .padding(.trailing)
                    Spacer()
                    
                    Image(systemName: "line.3.horizontal")
                        .imageScale(.large)
                        .padding()
                        .frame(width: 70,height: 90)
                        .overlay (
                            RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4)
                        )
                }
                .padding(30)
                /// Category list
                categorylist
                
                HStack {
                    Text("Choco **Collections**")
                        .font(.system(size: 24))
                    Spacer()
                    Image(systemName: "arrow.right")
                        .imageScale(.large)
                }
                .padding(.horizontal,30)
                .padding(.vertical , 15)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(productList, id: \.id) { product in
                            Productview(product: product)
                            
                        }
                    }
                }
                
                
            }
            
        }
    }
    
    var categorylist: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(categoryList, id: \.id) { item  in
                    Button {
                        selectedItem = item.title
                    } label: {
                        HStack {
                            if item.title != "All" {
                                Image(systemName: "hourglass.circle.fill")
                                    .foregroundStyle(selectedItem == item.title ? .yellow : .black)
                            }
                            Text(item.title)
                        }
                        .padding()
                        .background(selectedItem == item.title ? .black :.gray.opacity(0.1))
                        .foregroundStyle(selectedItem != item.title ? .black : .white)
                        .clipShape(Capsule())
                    }
                }
            }
            .padding(.horizontal , 30)
        }
    }
}

#Preview {
    HomeViewBootcamp()
}

struct Productview: View {
    var product: Product
    var body: some View {
        ZStack {
            Image(product.image)
                .frame(width: 100, height: 200)
                
                .rotationEffect(Angle(degrees: 30))
            ZStack {
                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.system(size: 36,weight: .semibold))
                    
                    Text(product.category)
                        .font(.callout)
                        .padding()
                        .background(.white).opacity(0.5)
                        .clipShape(.capsule)
                    Spacer()
                    
                    HStack {
                        Text("$\(product.price).0")
                            .font(.system(size: 24,weight: .semibold))
                        
                        Spacer()
                        
                        Image(systemName: "basket")
                            .imageScale(.large)
                            .frame(width: 90, height: 68)
                            .background(.black)
                            .clipShape(Capsule())
                            .foregroundStyle(.white)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(.white).opacity(0.5)
                    .clipShape(.capsule)
                    
                }
            }
            .padding(.leading)
            .padding()
            .frame(width: 336,height: 422)
            .background(product.color.opacity(0.13))
            .clipShape(.rect(cornerRadius: 57))
            .padding(.leading,20)
        }
    }
}
