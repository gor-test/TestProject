//
//  ProductAPIClient.swift
//  TestProject
//
//  Created by GOR GALSTYAN on 2021-02-05.
//

import Foundation

final class ProductAPIClient {
  private lazy var baseURL: URL = {
    return URL(string: "https://gist.githubusercontent.com/r2vq/")!
    
//    https://gist.githubusercontent.com/r2vq/2ac197145db3f6cdf1a353feb744cf8e/raw/b1e722f608b00ddde138a0eef2261c6ffc8b08d7/cart.json
  }()
  
  let session: URLSession
  
  init(session: URLSession = URLSession.shared) {
    self.session = session
  }
  
  func fetchProductList(page: Int, completion: @escaping (Result<ProductListResponse, DataResponseError>) -> Void) {
    let path = "/2ac197145db3f6cdf1a353feb744cf8e/raw/b1e722f608b00ddde138a0eef2261c6ffc8b08d7/cart.json"
    let urlRequest = URLRequest(url: baseURL.appendingPathComponent(path))

//    let parameters = ["page": "\(page)"].merging(request.parameters, uniquingKeysWith: +)
//    let encodedURLRequest = urlRequest.encode(with: parameters)
    
    session.dataTask(with: urlRequest, completionHandler: { data, response, error in
      guard
        let httpResponse = response as? HTTPURLResponse,
        200...299 ~= httpResponse.statusCode,
        let data = data
      else {
        completion(Result.failure(DataResponseError.network))
          return
      }
      
      guard let decodedResponse = try? JSONDecoder().decode(ProductListResponse.self, from: data) else {
        completion(Result.failure(DataResponseError.decoding))
        return
      }
      
      completion(Result.success(decodedResponse))
    }).resume()
  }
}

