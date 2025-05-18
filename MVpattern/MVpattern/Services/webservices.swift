//
//  webservices.swift
//  MVpattern
//
//  Created by shashwat singh on 18/05/25.
//

import Foundation

enum NetworkError : Error{
    case badURL
    case badResponse
    case badRequest
}
class WebService{
    func getProducts() async throws -> [Product] {
        guard let url = URL(string: "https://fakestoreapi.com/products") else{
            throw NetworkError.badURL
        }
        let (data,response) = try await URLSession.shared.data(from: url)
        
        guard let httpRequest = response as? HTTPURLResponse,
              httpRequest.statusCode == 200 else{
                  throw NetworkError.badRequest
              }
        let products = try JSONDecoder().decode([Product].self, from: data)
        return products
    }
}
