//
//  custom_container_background.swift
//  demo
//
//  Created by Nguyen Thanh on 17/01/2023.
//

import Foundation
import SwiftUI

struct CustomStructModifier : ViewModifier{
    var borderRadius: CGFloat
    var startColor: Color
    var endColor: Color
    var foregroundColor: Color
   
    func body(content: Content) -> some View {
        content
            .padding()
            .background(LinearGradient(
                gradient: Gradient(colors: [startColor, endColor]), startPoint: .leading, endPoint: .trailing
            ))
            .cornerRadius(borderRadius)
            .shadow(radius: 10)
            .padding(.horizontal, 24)
            .foregroundColor(foregroundColor)
    }
}
