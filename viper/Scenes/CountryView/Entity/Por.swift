//
//  Por.swift
//
//  Created by belal medhat on 11/06/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Por: Codable {

  enum CodingKeys: String, CodingKey {
    case official
    case common
  }

  var official: String?
  var common: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    official = try container.decodeIfPresent(String.self, forKey: .official)
    common = try container.decodeIfPresent(String.self, forKey: .common)
  }

}
