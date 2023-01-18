//
//  search_page.swift
//  demo
//
//  Created by Nguyen Thanh on 18/01/2023.
//

import Foundation
import SwiftUI

struct SearchPage: View{
    
    @State private var searchContent:String = ""
    var searchModels = [
        SearchCategoryModel(title: "Movies", description: "10 concerts\nNear you",
                colors: [Color(hex: 0xfFF9A94), Color(hex: 0xfFD3225)], imageUrl:"image_search_movie"),
        SearchCategoryModel(title: "Events", description: "20+ movies\nNear you",
                colors: [Color(hex: 0xfFFC09C), Color(hex: 0xfFD813B)], imageUrl:"image_search_movie"),
        SearchCategoryModel(title: "Comedy", description: "15 shows\nNear you",
                colors: [Color(hex: 0xfFFDB5C), Color(hex: 0xfEAA800)], imageUrl:"image_search_movie"),
        SearchCategoryModel(title: "Sports", description: "5 Events\nNear you",
                colors: [Color(hex: 0xfA3EAD0), Color(hex: 0xf07AA6F)], imageUrl:"image_search_movie"),
        SearchCategoryModel(title: "Upskill &\nTraining", description: "2 events",
                colors: [Color(hex: 0xf67D4F9), Color(hex: 0xf00AAE4)], imageUrl:"image_search_movie"),
        SearchCategoryModel(title: "Esports\nCentre", description: "3 events",
                colors: [Color(hex: 0xfFFA463), Color(hex: 0xfCF5700)], imageUrl:"image_search_movie"),
        
        
    ]
    
    var body: some View{
        VStack(alignment: .leading, content: {
            HStack(content: {
                Image(systemName: "arrow.left")
                
                Text("Search")
                    .foregroundColor(.black)
                    .font(.system(size: 18, weight: .medium))
                    .padding(.leading, 12)
                Spacer()
                
            }).padding()
            
            
            HStack(content: {
                HStack(content: {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color(hex: 0xfC4C4C4))
                    TextField("Search...", text: $searchContent)
                })
                    .padding()
                    .accentColor(.gray)
                    .background(Color(hex: 0xfECF1FF))
                    .cornerRadius(10)
                
                HStack(content: {
                    Image("icon_filter")
                        .renderingMode(.template)
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width: 16, height: 16)
                    
                    Text("Filters")
                        .foregroundColor(Color.white)
                        .font(.system(size: 16, weight: .regular))
                })
                .padding()
                .background(Color(hex: 0xf5669FF))
                .cornerRadius(10)
            })
            .padding(.horizontal, 16)
            
            
            ScrollView(content: {
                LazyVGrid(columns: [
                    GridItem(.adaptive(minimum: 150, maximum: .infinity))
                ], content: {
                    ForEach(searchModels, content: { item in
                        SearchItemWidget(model: item)
                    })
                })
                
            })
            .padding()
            
            
        })
    }
}


struct SearchPage_Previews: PreviewProvider {
    static var previews: some View {
        SearchPage()
    }
}
