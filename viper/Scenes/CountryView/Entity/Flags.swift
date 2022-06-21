//
//  Flags.swift
//
//  Created by belal medhat on 11/06/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Flags: Codable {

  enum CodingKeys: String, CodingKey {
    case svg
    case png
  }

  var svg: String?
  var png: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    svg = try container.decodeIfPresent(String.self, forKey: .svg)
    png = try container.decodeIfPresent(String.self, forKey: .png)
  }

}
