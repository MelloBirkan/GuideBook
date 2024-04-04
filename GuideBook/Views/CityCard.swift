//
//  CityCard.swift
//  GuideBook
//
//  Created by Marcello Gonzatto Birkan on 04/04/24.
//

import SwiftUI

struct CityCard: View {
  let city: City
  
  var body: some View {
    ZStack {
      
      RoundedRectangle(cornerRadius: 15)
        .foregroundStyle(.black)
        .opacity(0.5)
        .background {
          Image(city.imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
      
      VStack(alignment: .leading) {
        Text(city.name)
          .font(.largeTitle)
          .bold()
        Spacer()
        
        Text(city.summary)
          .multilineTextAlignment(.leading)
      }
      .foregroundStyle(.white)
      .padding()
    }
    .frame(height: 400)
  }
}

#Preview {
  CityCard(city: DataService.dataPreview)
}
