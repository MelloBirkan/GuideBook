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
         
          // Create URL instance based on URL Scheme
          if let url = URL(string: "maps://?q=\(attraction.name.replacingOccurrences(of: " ", with: "+"))&sll=\(attraction.latLong)&z=10&t=s") {
            // Test if URL can be opened
            if UIApplication.shared.canOpenURL(url) {
              Button(action: {
                // Open the URL
                UIApplication.shared.open(url)
              }, label: {
                ZStack {
                  RoundedRectangle(cornerRadius: 15)
                    .foregroundStyle(.blue)
                    .frame(height: 40)
                  Text("Get Directions")
                    .foregroundStyle(.white)
                    .bold()
                }
              })
            }
          }
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
