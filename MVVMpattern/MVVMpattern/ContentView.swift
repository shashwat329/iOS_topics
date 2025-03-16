//
//  ContentView.swift
//  MVVMpattern
//
//  Created by shashwat singh on 15/03/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ProductListViewModel(webservice: WebService())
    var body: some View {
        List(vm.products) {product in
            VStack(alignment: .leading){
                VStack{
                    if let imageUrl = URL(string: product.image) {
                        AsyncImage(url: imageUrl) { phase in
                            switch phase {
                                case .empty:
                                    ProgressView()
                                        .frame(width: 60, height: 60)
                                case .success(let image):
                                    image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 60, height: 60)
                                        .clipped()
                                        .cornerRadius(8)
                                case .failure:
                                    Image(systemName: "photo")
                                        .resizable()
                                        .frame(width: 60, height: 60)
                                        .foregroundColor(.gray)
                                @unknown default:
                                    EmptyView()
                            }
                        }
            }
                    HStack{
                        Image(systemName: "indianrupeesign")
                        Text("\(product.price)")
                    }
                  
                }
                Text(product.title)
            }
        }.task {
            await vm.populateproduct()
        }
    }
}

#Preview {
    ContentView()
}
