//
//  Idd.swift
//
//  Created by belal medhat on 11/06/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Idd: Codable {

  enum CodingKeys: String, CodingKey {
    case root
    case suffixes
  }

  var root: String?
  var suffixes: [String]?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    root = try container.decodeIfPresent(String.self, forKey: .root)
    suffixes = try container.decodeIfPresent([String].self, forKey: .suffixes)
  }

}
