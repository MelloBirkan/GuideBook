//
//  AttractionView.swift
//  GuideBook
//
//  Created by Marcello Gonzatto Birkan on 29/03/24.
//

import SwiftUI

struct AttractionView: View {
  var city: City
  
    var body: some View {
      
      ScrollView(showsIndicators: false) {
        VStack {
          ForEach(city.attractions) { attraction in
            NavigationLink {
              DetailView(attraction: attraction)
            } label: {
              AttractionRow(attraction: attraction)
                .padding(.bottom, 50)
            }
            .buttonStyle(.plain)
          }
        }
      }
      .padding(.horizontal)
    }
}

#Preview {
  AttractionView(city: DataService.dataPreview)
}
