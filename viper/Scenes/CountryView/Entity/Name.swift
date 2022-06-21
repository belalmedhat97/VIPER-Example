//
//  Name.swift
//
//  Created by belal medhat on 11/06/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Name: Codable {

  enum CodingKeys: String, CodingKey {
    case official
    case common
    case nativeName
  }

  var official: String?
  var common: String?
  var nativeName: NativeName?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    official = try container.decodeIfPresent(String.self, forKey: .official)
    common = try container.decodeIfPresent(String.self, forKey: .common)
    nativeName = try container.decodeIfPresent(NativeName.self, forKey: .nativeName)
  }

}
