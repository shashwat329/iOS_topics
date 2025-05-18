//
//  PriceView.swift
//  MVpattern
//
//  Created by shashwat singh on 18/05/25.
//

import SwiftUI

struct PriceView: View {
    @EnvironmentObject var storeModel: storeModel
    func fetchData() async {
        do{
            try await storeModel.populateProduct()
        }
        catch {
            print("error")
        }
    }
    var body: some View {
        List(storeModel.products){ product in
            Section{
                Text("\(product.id)")
                Text("$\(product.price)")
            }
        }
        .task {
            await fetchData()
        }
    }
}

#Preview {
    PriceView().environmentObject(storeModel(webservice: WebService()))
}
