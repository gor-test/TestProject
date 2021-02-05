//
//  DataResponseError.swift
//  TestProject
//
//  Created by GOR GALSTYAN on 2021-02-05.
//

import Foundation

enum DataResponseError: Error {
  case network
  case decoding
  
  var reason: String {
    switch self {
    case .network:
      return "An error occurred while fetching data "
    case .decoding:
      return "An error occurred while decoding data"
    }
  }
}
