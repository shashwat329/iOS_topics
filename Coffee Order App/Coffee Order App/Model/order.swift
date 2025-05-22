//
//  order.swift
//  Coffee Order App
//
//  Created by shashwat singh on 22/05/25.
//

import Foundation
enum CoffeeSize: IteratorProtocol, CaseIterable, Codable {
    case small
    case medium
    case large
    
    mutating func next() -> CoffeeSize? {
        switch self {
            case .small:
                return .small
            case .medium:
                return .medium
            case .large:
                return .large
        }
    }
}
    
struct order: Codable , Identifiable, Hashable{
        let id: Int
        let name: String
        let coffeeName: String
        let total: Double
        let size: CoffeeSize
    }
