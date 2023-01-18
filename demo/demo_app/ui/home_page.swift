//
//  home_page.swift
//  demo
//
//  Created by Nguyen Thanh on 17/01/2023.
//

import Foundation
import SwiftUI

struct HomePage: View{
    
//    @State var eventCategories = [
//        EventCategoryModel(name: "Movies", iconAssetPath: "ic_movie", isSelected: true, selectedTextColor: Color.white, unselectedTextColor: Color(hex: 0xfF0635A), selectedBgColor: Color(hex: 0xfF0635A), unselectedBgColor: Color.white),
//        EventCategoryModel(name: "Music", iconAssetPath: "ic_music", isSelected: false, selectedTextColor: Color.white, unselectedTextColor: Color(hex: 0xfF59762), selectedBgColor: Color(hex: 0xfF59762), unselectedBgColor: Color.white),
//        EventCategoryModel(name: "Sports", iconAssetPath: "ic_sports", isSelected: false, selectedTextColor: Color.white, unselectedTextColor: Color(hex: 0xf29D697), selectedBgColor: Color(hex: 0xf29D697), unselectedBgColor: Color.white),
//        EventCategoryModel(name: "Comedy", iconAssetPath: "ic_comedy", isSelected: false, selectedTextColor: Color.white, unselectedTextColor: Color(hex: 0xfFFC700), selectedBgColor: Color(hex: 0xfFFC700), unselectedBgColor: Color.white),
//    ]
    
    @ObservedObject var eventData = EventCategoryListModel()
    
    
    var body: some View{
       
        VStack(alignment: .leading,spacing: 0, content: {
            RoundedRectangle(cornerRadius: 0).frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: 0,
                alignment: .topLeading
            ).background(Color(hex: 0xf1C58F2))
            
            HStack(spacing: 0,content: {
                Image("ic_menu_left")
                    .resizable()
                    .frame(width: 32, height: 32)
                
                Spacer()
                
                VStack(spacing: 0,content: {
                    HStack(content: {
                        Text("Current Location")
                            .foregroundColor(Color.white.opacity(0.7))
                            .fontWeight(.medium)
                            .font(.system(size: 16, design: .default))
                        
                        Image("ic_drop_down")
                            .resizable()
                            .frame(width: 12, height: 8)
                    })
                    
                    Text("New Yourk, USA")
                        .foregroundColor(Color(hex: 0xfF4F4FE))
                        .fontWeight(.medium)
                        .font(.system(size: 16, design: .default))
                    
                })
                
                Spacer()
                
                Image("ic_notification")
                    .resizable()
                    .frame(width: 28, height: 28)
            })
            .padding([.top, .leading, .bottom], 20)
            .padding(.trailing, 12)
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: 132,
                alignment: .topLeading
            )
            .background(RoundedCorners(color: Color(hex: 0xf1C58F2), tl: 0, tr: 0, bl: 8, br: 8))
            
            ScrollView(showsIndicators: false, content: {
                VStack(alignment:.leading,content: {
                    Text("Event Categories")
                        .foregroundColor(Color(hex: 0xf1C1B19))
                        .fontWeight(.medium)
                        .font(.system(size: 18, design: .default))
                        .padding(20)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack(alignment: .top){
                            ForEach(eventData.data, content: { item in
                                EventCategoryWidget(model: item, onTap: {
                                  eventData.updateSelectedItem(itemId: item.id)
                                })
                            }).padding(.leading, 24)
                        }
                    }
                    .frame(height: 40)
                    
                    HeaderAndButtonWidge(title: "Nearby Movies", onClickSeeAll: {})
                        .padding(.top, 20)
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack(content: {
                            ForEach((0...4).reversed(), id:\.self, content: { item in
                                MovieItemWidget()
                            })
                        })
                        .padding()
                    })
                    .frame(minHeight: 0, maxHeight: 320)
                    
                    
                    InviteWidget()
                        .frame(height: 164)
                    
                    HeaderAndButtonWidge(title: "Nearby Events", onClickSeeAll: {})
                        .padding(.top, 24)
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack(content: {
                            ForEach((0...4).reversed(), id:\.self, content: { item in
                                EventItemWidet()
                            })
                        })
                        .padding()

                    })
                    .frame(minHeight: 0, maxHeight: 320)
                   
                })
            })
        })
        
    }
}

class EventCategoryListModel : ObservableObject{
    
    @Published var  data = [
        EventCategoryModel(name: "Movies", iconAssetPath: "ic_movie", isSelected: true, selectedTextColor: Color.white, unselectedTextColor: Color(hex: 0xfF0635A), selectedBgColor: Color(hex: 0xfF0635A), unselectedBgColor: Color.white),
        EventCategoryModel(name: "Music", iconAssetPath: "ic_music", isSelected: false, selectedTextColor: Color.white, unselectedTextColor: Color(hex: 0xfF59762), selectedBgColor: Color(hex: 0xfF59762), unselectedBgColor: Color.white),
        EventCategoryModel(name: "Sports", iconAssetPath: "ic_sports", isSelected: false, selectedTextColor: Color.white, unselectedTextColor: Color(hex: 0xf29D697), selectedBgColor: Color(hex: 0xf29D697), unselectedBgColor: Color.white),
        EventCategoryModel(name: "Comedy", iconAssetPath: "ic_comedy", isSelected: false, selectedTextColor: Color.white, unselectedTextColor: Color(hex: 0xfFFC700), selectedBgColor: Color(hex: 0xfFFC700), unselectedBgColor: Color.white),
    ]
    
    func updateSelectedItem(itemId: UUID){
        for index in 0..<data.count{
            var item = data[index]
            item.isSelected = item.id == itemId
            data[index] = item
        }
    }
    
    func removeSelectedItem(itemId: UUID){
        let itemIndex = data.firstIndex(where: {element in
            return element.id == itemId
        })
        
        data.remove(at: itemIndex ?? 0)
    }
    
}


struct RoundedCorners: View {
    var color: Color = .blue
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let w = geometry.size.width
                let h = geometry.size.height
                
                // Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
                path.closeSubpath()
            }
            .fill(self.color)
        }
    }
}


struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
