//
//  invite_widget.swift
//  demo
//
//  Created by Nguyen Thanh on 18/01/2023.
//

import Foundation
import SwiftUI

struct InviteWidget: View{
    var body: some View{
        ZStack(content:{
            VStack(content: {
                
            })
            .frame(minWidth: 0, maxWidth: .infinity,minHeight: 0, maxHeight: 142, alignment: .center )
            .background(LinearGradient(colors: [Color(hex: 0xfFFD953), Color(hex: 0xfFDC500),Color(hex: 0xfFFC700) ], startPoint: .leading, endPoint: .trailing))
            .cornerRadius(5)
            .padding()
            
            HStack(content:{
                Spacer()
                VStack(spacing: 0,content: {
                    Text("Invite Your Friends")
                        .foregroundColor(Color.black)
                        .font(.system(size: 18, weight: .semibold))
                    
                    Text("&")
                        .foregroundColor(Color.black)
                        .font(.system(size: 18, weight: .semibold))
                    
                    Text("Get free popcorn and pepsi")
                        .foregroundColor(Color.black)
                        .font(.system(size: 14, weight: .regular))
                    
                    Text("Invite")
                        .padding(.horizontal, 24)
                        .padding(.vertical, 6)
                        .foregroundColor(.black)
                        .font(.system(size: 14,weight: .semibold))
                        .background(Color.white)
                        .cornerRadius(16)
                        .padding(.top, 12)
                    
                })
            })
            .padding(.trailing, 32)
            
            VStack{
                Spacer()
                HStack {
                    Image("image_reward")
                        .resizable()
                        .frame(width: 122, height: 122)
                        .padding(.leading, 12)
                    
                    Spacer()
                }
            }
            
           
            
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 164,alignment: .center)
    }
}

struct InviteWidget_Previews: PreviewProvider {
    static var previews: some View {
        InviteWidget()
    }
}
