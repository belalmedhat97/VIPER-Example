//
//  Languages.swift
//
//  Created by belal medhat on 11/06/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Languages: Codable {

  enum CodingKeys: String, CodingKey {
    case ara
  }

  var ara: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    ara = try container.decodeIfPresent(String.self, forKey: .ara)
  }

}
