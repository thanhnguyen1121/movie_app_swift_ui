//
//  header_and_button_widget.swift
//  demo
//
//  Created by Nguyen Thanh on 18/01/2023.
//

import Foundation
import SwiftUI

struct HeaderAndButtonWidge: View{
    var title:String
    var onClickSeeAll: ()->()
    var body: some View{
        HStack(content: {
            Text(title)
                .fontWeight(.medium)
                .font(.system(size: 18))
            
            Spacer()
            
            HStack(content: {
                Button( "See All", action: {
                    
                })
                .font(.caption)
                
                Image(systemName: "chevron.forward")
                    .resizable()
                    .frame(width: 6, height: 10)
                    .foregroundColor(Color(hex: 0xf1C58F2))
            })
          
        })
        .padding(.horizontal, 20)
    }
}

struct HeaderAndButtonWidge_Previews: PreviewProvider {
    static var previews: some View {
        HeaderAndButtonWidge(title: "Nearby Movies", onClickSeeAll: {})
    }
}
