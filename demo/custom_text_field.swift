//
//  custom_text_field.swift
//  demo
//
//  Created by Nguyen Thanh on 17/01/2023.
//

import Foundation
import SwiftUI

struct MyTextFieldStyle : TextFieldStyle{
    func _body(configuration: TextField<Self._Label>) -> some View{
        configuration
                    .padding(10)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.orange]),
                                               startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 10)
                    

    }
}


