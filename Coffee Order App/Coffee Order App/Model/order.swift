//
//  order.swift
//  Coffee Order App
//
//  Created by shashwat singh on 22/05/25.
//

import Foundation

    
struct order: Codable , Identifiable, Hashable{
        let id: Int
        let name: String
        let coffeeName: String
        let total: Double
        let size: String
    }
