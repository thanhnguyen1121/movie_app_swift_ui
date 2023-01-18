//
//  event_category_widget.swift
//  demo
//
//  Created by Nguyen Thanh on 17/01/2023.
//

import Foundation
import SwiftUI

struct EventCategoryWidget: View{

    var model: EventCategoryModel
    var onTap: ()->()
    var body: some View{
        VStack(content: {
            if model.isSelected {
                HStack(spacing: 0 ,content: {
                    
                    Image(model.iconAssetPath)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                    
                    Text(model.name)
                        .foregroundColor(model.selectedTextColor)
                        .fontWeight(.bold)
                        .font(.system(size: 14))
                        .padding(.leading, 8)
                    
                })
                .frame(width: 110, height: 40)
                .background(model.selectedBgColor)
                .cornerRadius(20)
            }else{
                HStack(spacing: 0 ,content: {
                    
                    Image(model.iconAssetPath)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(model.unselectedTextColor)
                    
                    Text(model.name)
                        .foregroundColor(model.unselectedTextColor)
                        .fontWeight(.bold)
                        .font(.system(size: 14))
                        .padding(.leading, 8)
                    
                })
                .frame(width: 110, height: 40)
                .background(RoundedRectangle(cornerRadius: 20).stroke(model.unselectedTextColor, lineWidth: 2))
                .cornerRadius(20)
            }
            
        }).onTapGesture {
//            model.isSelected.toggle();
            self.onTap()
            
        }
    }
}


//struct EventCategoryWidget_Previews: PreviewProvider {
//    static var previews: some View {
//        EventCategoryWidget(model: $EventCategoryModel(name: "Movies", iconAssetPath: "ic_music", isSelected: true,selectedTextColor: Color.white, unselectedTextColor: Color(hex: 0xfF0635A), selectedBgColor: Color(hex: 0xfF0635A), unselectedBgColor: Color.white), onTap: {
//            print("on tapp")
//        })
//    }
//}
