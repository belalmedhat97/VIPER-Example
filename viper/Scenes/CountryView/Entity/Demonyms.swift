//
//  Demonyms.swift
//
//  Created by belal medhat on 11/06/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Demonyms: Codable {

  enum CodingKeys: String, CodingKey {
    case fra
    case eng
  }

  var fra: Fra?
  var eng: Eng?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    fra = try container.decodeIfPresent(Fra.self, forKey: .fra)
    eng = try container.decodeIfPresent(Eng.self, forKey: .eng)
  }

}
