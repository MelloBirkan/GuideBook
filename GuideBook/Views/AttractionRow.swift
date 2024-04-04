//
//  AttractionRow.swift
//  GuideBook
//
//  Created by Marcello Gonzatto Birkan on 04/04/24.
//

import SwiftUI

struct AttractionRow: View {
  let attraction: Attraction
  
  var body: some View {
    VStack(alignment: .leading, spacing: 10, content: {
      Image(attraction.imageName)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(height: 120)
        .clipShape(RoundedRectangle(cornerRadius: 12))
      
      Text(attraction.name)
        .font(.largeTitle)
        .bold()
      
      Text(attraction.summary)
        .multilineTextAlignment(.leading)
    })
    .foregroundStyle(.primary)
  }
}

#Preview {
  AttractionRow(attraction: DataService.dataPreview.attractions[0])
}
