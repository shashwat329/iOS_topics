//
//  product.swift
//  MVpattern
//
//  Created by shashwat singh on 18/05/25.
//

import Foundation

struct Product: Decodable,Identifiable{
    let id: Int
    let title: String
    let price: Double
}
