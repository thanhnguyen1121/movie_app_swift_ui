//
//  event_item_widget.swift
//  demo
//
//  Created by Nguyen Thanh on 18/01/2023.
//

import Foundation
import SwiftUI

struct EventItemWidet: View{
    var body: some View{
        
        ZStack(alignment: .center, content: {
            Image("image_event_01")
                .resizable()
                .frame(width: .infinity, height: .infinity)
            
            VStack(content: {
                Spacer()
                VStack(alignment: .leading, spacing: 0, content: {
                    Text("Bolloywood Night Desi Party.....")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .medium))
                        .padding(.bottom, 4)
                    
                    Text("11 pm June 10, 2022")
                        .foregroundColor(.white)
                        .font(.system(size: 13, weight: .regular))
                    
                    Text("Bacalls Blue Midtown, New York, NY")
                        .foregroundColor(.white)
                        .font(.system(size: 13, weight: .regular))
                        .padding(.bottom, 4)
                    
                    Text("$25 - $35")
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .semibold))
                        
                })
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(LinearGradient(colors: [Color(hex: 0xf1C1B19).opacity(0.35), Color(hex: 0xf1C1B19)], startPoint: .top, endPoint: .bottom))
            })
           
            VStack(alignment: .trailing, content: {
                HStack(content:{
                    Spacer()
                    VStack(content:{
                        Text("2")
                            .foregroundColor(.black)
                            .font(.system(size: 28, weight: .semibold))
                            
                        Text("May")
                            .foregroundColor(.black)
                            .font(.system(size: 18, weight: .semibold))
                    })
                    .padding(.vertical, 8)
                    .padding(.horizontal, 12)
                    .background(.white)
                    .cornerRadius(12)
                    .offset(x:-10, y: 10)
                    .shadow(radius: 1)
                })
                
                Spacer()
            })
           
            
        })
        .frame(minWidth: 0, maxWidth: 318, minHeight: 0,
               maxHeight:  327, alignment: .center)
        .cornerRadius(24)
    
    }
}

struct EventItemWidet_Previews: PreviewProvider {
    static var previews: some View {
        EventItemWidet()
    }
}
