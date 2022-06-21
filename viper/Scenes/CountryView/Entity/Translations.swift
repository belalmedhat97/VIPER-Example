//
//  Translations.swift
//
//  Created by belal medhat on 11/06/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Translations: Codable {

  enum CodingKeys: String, CodingKey {
    case ita
    case est
    case hrv
    case pol
    case kor
    case per
    case cym
    case jpn
    case urd
    case slk
    case deu
    case ara
    case ces
    case rus
    case spa
    case swe
    case zho
    case fra
    case hun
    case por
    case fin
    case nld
  }

  var ita: Ita?
  var est: Est?
  var hrv: Hrv?
  var pol: Pol?
  var kor: Kor?
  var per: Per?
  var cym: Cym?
  var jpn: Jpn?
  var urd: Urd?
  var slk: Slk?
  var deu: Deu?
  var ara: Ara?
  var ces: Ces?
  var rus: Rus?
  var spa: Spa?
  var swe: Swe?
  var zho: Zho?
  var fra: Fra?
  var hun: Hun?
  var por: Por?
  var fin: Fin?
  var nld: Nld?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    ita = try container.decodeIfPresent(Ita.self, forKey: .ita)
    est = try container.decodeIfPresent(Est.self, forKey: .est)
    hrv = try container.decodeIfPresent(Hrv.self, forKey: .hrv)
    pol = try container.decodeIfPresent(Pol.self, forKey: .pol)
    kor = try container.decodeIfPresent(Kor.self, forKey: .kor)
    per = try container.decodeIfPresent(Per.self, forKey: .per)
    cym = try container.decodeIfPresent(Cym.self, forKey: .cym)
    jpn = try container.decodeIfPresent(Jpn.self, forKey: .jpn)
    urd = try container.decodeIfPresent(Urd.self, forKey: .urd)
    slk = try container.decodeIfPresent(Slk.self, forKey: .slk)
    deu = try container.decodeIfPresent(Deu.self, forKey: .deu)
    ara = try container.decodeIfPresent(Ara.self, forKey: .ara)
    ces = try container.decodeIfPresent(Ces.self, forKey: .ces)
    rus = try container.decodeIfPresent(Rus.self, forKey: .rus)
    spa = try container.decodeIfPresent(Spa.self, forKey: .spa)
    swe = try container.decodeIfPresent(Swe.self, forKey: .swe)
    zho = try container.decodeIfPresent(Zho.self, forKey: .zho)
    fra = try container.decodeIfPresent(Fra.self, forKey: .fra)
    hun = try container.decodeIfPresent(Hun.self, forKey: .hun)
    por = try container.decodeIfPresent(Por.self, forKey: .por)
    fin = try container.decodeIfPresent(Fin.self, forKey: .fin)
    nld = try container.decodeIfPresent(Nld.self, forKey: .nld)
  }

}
