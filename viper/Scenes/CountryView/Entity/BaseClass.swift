//
//  BaseClass.swift
//
//  Created by belal medhat on 11/06/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct CountryBaseClass: Codable {

  enum CodingKeys: String, CodingKey {
    case demonyms
    case translations
    case landlocked
    case timezones
    case continents
    case postalCode
    case borders
    case tld
//    case latlng
    case languages
    case region
    case independent
    case flag
    case startOfWeek
    case ccn3
    case car
    case flags
    case capital
    case cca3
//    case area
    case status
    case capitalInfo
//    case gini
    case unMember
    case name
    case coatOfArms
    case cca2
    case maps
    case currencies
    case idd
    case cioc
    case subregion
    case altSpellings
    case fifa
    case population
  }

  var demonyms: Demonyms?
  var translations: Translations?
  var landlocked: Bool?
  var timezones: [String]?
  var continents: [String]?
  var postalCode: PostalCode?
  var borders: [String]?
  var tld: [String]?
//  var latlng: [Int]?
  var languages: Languages?
  var region: String?
  var independent: Bool?
  var flag: String?
  var startOfWeek: String?
  var ccn3: String?
  var car: Car?
  var flags: Flags?
  var capital: [String]?
  var cca3: String?
//  var area: Int?
  var status: String?
  var capitalInfo: CapitalInfo?
//  var gini: Gini?
  var unMember: Bool?
  var name: Name?
  var coatOfArms: CoatOfArms?
  var cca2: String?
  var maps: Maps?
  var currencies: Currencies?
  var idd: Idd?
  var cioc: String?
  var subregion: String?
  var altSpellings: [String]?
  var fifa: String?
  var population: Int?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    demonyms = try container.decodeIfPresent(Demonyms.self, forKey: .demonyms)
    translations = try container.decodeIfPresent(Translations.self, forKey: .translations)
    landlocked = try container.decodeIfPresent(Bool.self, forKey: .landlocked)
    timezones = try container.decodeIfPresent([String].self, forKey: .timezones)
    continents = try container.decodeIfPresent([String].self, forKey: .continents)
    postalCode = try container.decodeIfPresent(PostalCode.self, forKey: .postalCode)
    borders = try container.decodeIfPresent([String].self, forKey: .borders)
    tld = try container.decodeIfPresent([String].self, forKey: .tld)
//    latlng = try container.decodeIfPresent([Int].self, forKey: .latlng)
    languages = try container.decodeIfPresent(Languages.self, forKey: .languages)
    region = try container.decodeIfPresent(String.self, forKey: .region)
    independent = try container.decodeIfPresent(Bool.self, forKey: .independent)
    flag = try container.decodeIfPresent(String.self, forKey: .flag)
    startOfWeek = try container.decodeIfPresent(String.self, forKey: .startOfWeek)
    ccn3 = try container.decodeIfPresent(String.self, forKey: .ccn3)
    car = try container.decodeIfPresent(Car.self, forKey: .car)
    flags = try container.decodeIfPresent(Flags.self, forKey: .flags)
    capital = try container.decodeIfPresent([String].self, forKey: .capital)
    cca3 = try container.decodeIfPresent(String.self, forKey: .cca3)
//    area = try container.decodeIfPresent(Int.self, forKey: .area)
    status = try container.decodeIfPresent(String.self, forKey: .status)
    capitalInfo = try container.decodeIfPresent(CapitalInfo.self, forKey: .capitalInfo)
//    gini = try container.decodeIfPresent(Gini.self, forKey: .gini)
    unMember = try container.decodeIfPresent(Bool.self, forKey: .unMember)
    name = try container.decodeIfPresent(Name.self, forKey: .name)
    coatOfArms = try container.decodeIfPresent(CoatOfArms.self, forKey: .coatOfArms)
    cca2 = try container.decodeIfPresent(String.self, forKey: .cca2)
    maps = try container.decodeIfPresent(Maps.self, forKey: .maps)
    currencies = try container.decodeIfPresent(Currencies.self, forKey: .currencies)
    idd = try container.decodeIfPresent(Idd.self, forKey: .idd)
    cioc = try container.decodeIfPresent(String.self, forKey: .cioc)
    subregion = try container.decodeIfPresent(String.self, forKey: .subregion)
    altSpellings = try container.decodeIfPresent([String].self, forKey: .altSpellings)
    fifa = try container.decodeIfPresent(String.self, forKey: .fifa)
    population = try container.decodeIfPresent(Int.self, forKey: .population)
  }

}
