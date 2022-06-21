//
//  CapitalInfo.swift
//
//  Created by belal medhat on 11/06/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct CapitalInfo: Codable {

  enum CodingKeys: String, CodingKey {
    case latlng
  }

  var latlng: [Float]?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    latlng = try container.decodeIfPresent([Float].self, forKey: .latlng)
  }

}
