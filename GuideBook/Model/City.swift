//
//  City.swift
//  GuideBook
//
//  Created by Marcello Gonzatto Birkan on 29/03/24.
//

import Foundation

struct City: Identifiable {
  let id = UUID()
  let name: String
  let summary: String
  let imageName: String
  let attractions: [Attraction]
  
}
