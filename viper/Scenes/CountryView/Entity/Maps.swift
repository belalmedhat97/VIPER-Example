//
//  Maps.swift
//
//  Created by belal medhat on 11/06/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Maps: Codable {

  enum CodingKeys: String, CodingKey {
    case openStreetMaps
    case googleMaps
  }

  var openStreetMaps: String?
  var googleMaps: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    openStreetMaps = try container.decodeIfPresent(String.self, forKey: .openStreetMaps)
    googleMaps = try container.decodeIfPresent(String.self, forKey: .googleMaps)
  }

}
