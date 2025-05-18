//
//  ContentView.swift
//  MVpattern
//
//  Created by shashwat singh on 18/05/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var store: storeModel
    func fetchData() async {
        do{
            try await store.populateProduct()
        }
        catch{
            print(error)
        }
    }
    var body: some View {
        VStack {
            List(store.products){ product in
                Text(product.title)
            }
        }
        .task {
            await fetchData()
        }
        .padding()
    }
}

#Preview {
    ContentView().environmentObject(storeModel(webservice: WebService()))
}
