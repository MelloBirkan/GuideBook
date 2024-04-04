//
//  Attraction.swift
//  GuideBook
//
//  Created by Marcello Gonzatto Birkan on 29/03/24.
//

import Foundation

struct Attraction: Identifiable {
  let id = UUID()
  let name: String
  let summary: String
  let longDescription: String
  let imageName: String
  let latLong: String
}
