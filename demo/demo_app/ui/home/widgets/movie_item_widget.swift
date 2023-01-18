//
//  movie_item_widget.swift
//  demo
//
//  Created by Nguyen Thanh on 18/01/2023.
//

import Foundation
import SwiftUI

struct MovieItemWidget : View{
    var body: some View{
        VStack(alignment: .leading, content: {
            ZStack(alignment:.bottom,content: {
                Image("image_black_adam")
                    .resizable()
                    .frame(width: .infinity, height: 264)
                
                HStack(content: {
                    Image("icon_start")
                        .resizable()
                        .frame(width: 16, height: 16)
                    
                    Text("8.2/10")
                        .foregroundColor(.white)
                        .font(.system(size: 12, weight: .semibold))
                    
                    Spacer()
                    
                    Text("24.4  votes")
                        .foregroundColor(.white)
                        .font(.system(size: 12, weight: .semibold))
                })
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 40, alignment: .leading)
                .background(LinearGradient(gradient: Gradient(colors: [Color(hex: 0xf1C1B19), Color(hex: 0xf1C1B19).opacity(0.35)]), startPoint: .top, endPoint: .bottom))
                
            })
            .cornerRadius(12)
            
            Text("Black Adam")
                .font(.system(size: 16, weight: .regular))
                .padding(.top, 8)
        })
        .frame(width: 200)
        
        
    }
}

struct MovieItemWidget_Previews: PreviewProvider {
    static var previews: some View {
        MovieItemWidget()
    }
}
