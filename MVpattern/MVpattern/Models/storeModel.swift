//
//  storeModel.swift
//  MVpattern
//
//  Created by shashwat singh on 18/05/25.
//


import Foundation

@MainActor
class storeModel:ObservableObject {
    let webservice: WebService
    @Published var products: [Product] = []
   
    
    init(webservice: WebService){
        self.webservice = webservice
    }
        
    func populateProduct() async throws {
        products = try await webservice.getProducts()
    }
}
