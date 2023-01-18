//
//  dragable_demo.swift
//  demo
//
//  Created by Nguyen Thanh on 17/01/2023.
//

import Foundation
import SwiftUI

struct DragableDemo: View{
    @State private var currentPositioin: CGSize = .zero
    @State private var endPosition: CGSize = .zero
    
    
    var body: some View{
        Image(systemName: "pencil.circle.fill")
            .font(.largeTitle)
            .offset(currentPositioin)
            .gesture(DragGesture().onChanged({ value in
                self.currentPositioin.width = self.endPosition.width + value.translation.width;
                self.currentPositioin.height = self.endPosition.height + value.translation.height;
            }).onEnded({ value in
                self.currentPositioin.width = self.endPosition.width + value.translation.width;
                self.endPosition.height = self.endPosition.height + value.translation.height;
                self.endPosition = self.currentPositioin;
            }))
            
    }
}



struct DragableDemo_Previews: PreviewProvider {
    static var previews: some View {
        DragableDemo()
    }
}
