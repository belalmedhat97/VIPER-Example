//
//  EGP.swift
//
//  Created by belal medhat on 11/06/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct EGP: Codable {

  enum CodingKeys: String, CodingKey {
    case name
    case symbol
  }

  var name: String?
  var symbol: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    name = try container.decodeIfPresent(String.self, forKey: .name)
    symbol = try container.decodeIfPresent(String.self, forKey: .symbol)
  }

}
