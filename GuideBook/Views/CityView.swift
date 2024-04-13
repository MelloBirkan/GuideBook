//
//  ContentView.swift
//  GuideBook
//
//  Created by Marcello Gonzatto Birkan on 29/03/24.
//

import SwiftUI

struct CityView: View {
  @State var cities = DataService()
  
  var body: some View {
    NavigationStack {
      ScrollView(showsIndicators: false) {
        VStack {
          ForEach(cities.data) { city in
            
            NavigationLink {
              AttractionView(city: city)
              
            } label: {
              CityCard(city: city)
                .padding(.bottom, 20)
            }
          }
        }
        .padding(.horizontal)
      }
      .onAppear(perform: {
        cities.getFileData()
    })
    }
    
  }
}

#Preview {
  CityView()
}
