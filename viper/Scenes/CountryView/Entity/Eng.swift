//
//  Eng.swift
//
//  Created by belal medhat on 11/06/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Eng: Codable {

  enum CodingKeys: String, CodingKey {
    case f
    case m
  }

  var f: String?
  var m: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    f = try container.decodeIfPresent(String.self, forKey: .f)
    m = try container.decodeIfPresent(String.self, forKey: .m)
  }

}
