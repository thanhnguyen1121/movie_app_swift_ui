//
//  search_item_widget.swift
//  demo
//
//  Created by Nguyen Thanh on 18/01/2023.
//

import Foundation
import SwiftUI

struct SearchItemWidget: View{
    var model: SearchCategoryModel
    var body: some View{
        ZStack(alignment: .bottomTrailing,content: {
            VStack(alignment: .leading, content: {
                Text(model.title)
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .semibold))
                Text(model.description)
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .regular))
                Spacer()
            })
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .padding(12)
            
            Image(model.imageUrl)
                .resizable()
                .frame(width: 134, height: 148)
            
        })
        .frame(minWidth: 0, maxWidth: 180, minHeight: 0, maxHeight: 180)
        .background(LinearGradient(colors: model.colors, startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(10)
    }
}


struct SearchItemWidget_Previews: PreviewProvider {
    static var previews: some View {
        SearchItemWidget(model: SearchCategoryModel(title: "Movies", description: "20+ movies\nNear you", colors: [Color(hex: 0xfFF9A94), Color(hex: 0xfFD3225)], imageUrl: "image_search_movie"))
    }
}
