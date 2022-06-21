//
//  Kor.swift
//
//  Created by belal medhat on 11/06/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Kor: Codable {

  enum CodingKeys: String, CodingKey {
    case common
    case official
  }

  var common: String?
  var official: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    common = try container.decodeIfPresent(String.self, forKey: .common)
    official = try container.decodeIfPresent(String.self, forKey: .official)
  }

}
