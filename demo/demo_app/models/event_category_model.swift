//
//  event_category_model.swift
//  demo
//
//  Created by Nguyen Thanh on 17/01/2023.
//

import Foundation
import SwiftUI

struct EventCategoryModel: Identifiable{
    var id = UUID()
    var name: String
    var iconAssetPath: String
    var isSelected:Bool
    var selectedTextColor: Color
    var unselectedTextColor: Color
    var selectedBgColor: Color
    var unselectedBgColor: Color
    
    
    mutating func updateSelectedStatus(value: Bool){
        isSelected = value
    }
    
    func copyWith(name: String? = nil, iconAssetPath: String? = nil, isSelected: Bool? = nil, selectedTextColor: Color? = nil,
                  unselectedTextColor: Color? = nil, selectedBgColor: Color? = nil, unselectedBgColor: Color? = nil) -> EventCategoryModel{
        return EventCategoryModel(
            id: self.id, name: name ?? self.name, iconAssetPath: iconAssetPath ?? self.iconAssetPath, isSelected: isSelected ?? self.isSelected, selectedTextColor: selectedTextColor ?? self.selectedTextColor, unselectedTextColor: unselectedTextColor ?? self.unselectedTextColor, selectedBgColor: selectedTextColor ?? self.selectedTextColor, unselectedBgColor: unselectedBgColor ?? self.unselectedBgColor
            
        );
    }
    
    func test(firstThing: Int?) {
        if firstThing != nil {
            print(firstThing!)
        }
        print("done")
    }

}
