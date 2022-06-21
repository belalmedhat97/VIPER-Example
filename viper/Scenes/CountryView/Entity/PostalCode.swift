//
//  PostalCode.swift
//
//  Created by belal medhat on 11/06/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct PostalCode: Codable {

  enum CodingKeys: String, CodingKey {
    case regex
    case format
  }

  var regex: String?
  var format: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    regex = try container.decodeIfPresent(String.self, forKey: .regex)
    format = try container.decodeIfPresent(String.self, forKey: .format)
  }

}
