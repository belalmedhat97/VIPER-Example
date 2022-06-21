//
//  Car.swift
//
//  Created by belal medhat on 11/06/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Car: Codable {

  enum CodingKeys: String, CodingKey {
    case side
    case signs
  }

  var side: String?
  var signs: [String]?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    side = try container.decodeIfPresent(String.self, forKey: .side)
    signs = try container.decodeIfPresent([String].self, forKey: .signs)
  }

}
