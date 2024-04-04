//
//  DetailView.swift
//  GuideBook
//
//  Created by Marcello Gonzatto Birkan on 29/03/24.
//

import SwiftUI

struct DetailView: View {
  let attraction: Attraction
  
  var body: some View {
    VStack(spacing: 20) {
      Image(attraction.imageName)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(height: 300)
      
      ScrollView {
        VStack(alignment: .leading, spacing: 10) {
          Text(attraction.name)
            .font(.largeTitle)
            .bold()
          
          Text(attraction.longDescription)
            .multilineTextAlignment(.leading)
        }
        .padding(.bottom, 20)
      }
      .padding(.horizontal)
    }
    .ignoresSafeArea()
  }
}

    #Preview {
      DetailView(attraction: DataService.dataPreview.attractions[0])
    }
