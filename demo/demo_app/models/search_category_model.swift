//
//  search_category_model.swift
//  demo
//
//  Created by Nguyen Thanh on 18/01/2023.
//

import Foundation
import SwiftUI

struct SearchCategoryModel: Identifiable {
    var id: UUID = UUID()
    var title: String
    var description: String
    var colors: [(Color)]
    var imageUrl: String
}
