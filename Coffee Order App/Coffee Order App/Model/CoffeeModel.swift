//
//  CoffeeModel.swift
//  Coffee Order App
//
//  Created by shashwat singh on 22/05/25.
//


// MARK: this is the aggrate root or Common ViewModel of the application
import Foundation

@MainActor
class CoffeeModel: ObservableObject {
    
    let webservice: WebService
    @Published private var orders: [order] = []
    init(webservice: WebService){
        self.webservice = webservice
    }
    func populateOrder() async throws {
        orders = try await webservice.getproduct()
    }
}
