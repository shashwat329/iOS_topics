//
//  ContentView.swift
//  MVVMpattern
//
//  Created by shashwat singh on 15/03/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ProductListViewModel(webservice:  WebService())
    var body: some View {
        VStack{
            List (vm.products){item in
                VStack(alignment: .leading){
                    Text(item.title)
                    HStack{
                        Image(systemName: "indianrupeesign")
                        Text("\(item.price)")
                    }
                }
                
            }.task {
                await vm.populateproduct()
            }
        }
    }
}

#Preview {
    ContentView()
}
