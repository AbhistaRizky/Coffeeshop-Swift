//
//  ContentView.swift
//  exerciseDay4
//
//  Created by laptop MCO on 03/08/23.
//

import SwiftUI

struct ContentView: View {
    
    private var CoffeeShopResult: [Coffeeshop]{
        let Result = CoffeeshopProvider.all()
        if searchText.isEmpty {
            return Result
        }else {
            return Result.filter{ index in
                index.name.lowercased()
                    .contains(searchText.lowercased())
            }
        }
    }
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            List(CoffeeShopResult) { Result in
                NavigationLink {
                    CSDetail(shopDetail: Result)
                } label: {
                    Image("\(Result.image)")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Text("\(Result.name)")
                        .font(.title2)
                        .padding(10)
                }
            }
            .searchable(text: $searchText)
            .listStyle(.plain)
            .navigationTitle("Coffee Shop Name")
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
