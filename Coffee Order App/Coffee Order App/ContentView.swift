//
//  ContentView.swift
//  Coffee Order App
//
//  Created by shashwat singh on 22/05/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var model: CoffeeModel
    private func populateProducts() async {
        do{
            try await model.populateOrder()
        }
        catch{
            print(error)
        }
    }
    var body: some View {
        VStack{
            List(model.orders ){ order in
                VStack(alignment: .leading){
                    HStack{
                        Text(order.name)
                            .font(.headline)
                        Spacer()
                        Image(systemName: "dollarsign")
                            .font(.system(size: 15))
                        Text(String("\(order.total)"))
                    }
                    HStack{
                        Text(order.coffeeName)
                        Text("(\(order.size))")
                    }
                   

                }
            }
        }.task{
            await populateProducts ()
        }
        
    }
}

#Preview {
    ContentView().environmentObject(CoffeeModel(webservice: WebService()))
}
