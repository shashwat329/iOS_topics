//
//  ProductViewModel.swift
//  MVVMpattern
//
//  Created by shashwat singh on 15/03/25.
//

import Foundation
import Observation

@MainActor
class ProductListViewModel:ObservableObject {
    @Published var products: [ProductViewModel] = []
    let webservice: WebService
    init(webservice: WebService) {
        self.webservice = webservice
    }
    func populateproduct() async{
        do {
            let product = try await webservice.getProduct()
            self.products = product.map(ProductViewModel.init)
        }
        catch{
            print(error)
        }
    }
}

struct ProductViewModel: Identifiable {
    private let product: Product
    init(product: Product){
        self.product = product
    }
    var id: Int{
        product.id
    }
    var title: String{
        product.title
    }
    var price: Double{
        product.price
    }
    var image: String{
        product.image
    }
}
