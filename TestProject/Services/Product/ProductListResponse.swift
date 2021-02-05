//
//  ProductListResponse.swift
//  TestProject
//
//  Created by GOR GALSTYAN on 2021-02-05.
//

import Foundation

struct ProductListResponse: Decodable {
    var entries: [ProductList.Product]
}

//struct ProductResponse: Decodable {
//    var code: String
//    var image: String
//    var name: String
//    var price: String
//    var type: String
//}
