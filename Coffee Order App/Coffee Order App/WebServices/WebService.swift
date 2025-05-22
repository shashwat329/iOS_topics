//
//  WebService.swift
//  Coffee Order App
//
//  Created by shashwat singh on 22/05/25.
//

import Foundation

enum NetworkError: Error {
    case badURL
    case badResponse
    case badDecoding
}

class WebService {
    func getproduct() async throws -> [order] {
        guard let url = URL(string: "https://island-bramble.glitch.me/orders") else {
            throw NetworkError.badURL
        }
        let (data,response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw NetworkError.badResponse
        }
        let orders = try JSONDecoder().decode([order].self, from: data)
        return orders
    }
}
