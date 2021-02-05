//
//  ProductListWorker.swift
//  TestProject
//
//  Created by GOR GALSTYAN on 2021-02-05.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

class ProductListWorker
{
    let client = ProductAPIClient()
    
    private var currentPage = 1

    func getProductList(completion:  @escaping (Result<ProductListResponse, DataResponseError>) -> Void)
    {
        client.fetchProductList(page: currentPage) { result in
            completion(result)
        }
    }
}
