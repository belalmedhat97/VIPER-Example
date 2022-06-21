//
//  Currencies.swift
//
//  Created by belal medhat on 11/06/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Currencies: Codable {

  enum CodingKeys: String, CodingKey {
    case eGP = "EGP"
  }

  var eGP: EGP?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    eGP = try container.decodeIfPresent(EGP.self, forKey: .eGP)
  }

}
