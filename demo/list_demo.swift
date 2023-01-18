//
//  list_demo.swift
//  demo
//
//  Created by Nguyen Thanh on 17/01/2023.
//

import Foundation
import SwiftUI

struct StudentModel : Identifiable{
    var id = UUID()
    var name: String
    var age: Int
    var status: Bool
}

struct StudentItem: View{

    @Binding var model:StudentModel
    var onTap: ()->()
    var body: some View{
        VStack(alignment: .leading, content: {
            HStack(content: {
                Text("Student name: \(model.name)")
                    .padding(.vertical, 4)
                
                Image(systemName:model.status ? "checkmark.square.fill" : "square")
                    .foregroundColor(model.status ? Color.green : Color.gray)
                    .frame(width: 20, height: 20)
            })
            
            Text("Student age: \(model.age)")
        }).onTapGesture {
            model.status.toggle()
            onTap();
        }
    }
}

struct ListDemo: View{
    @State var listStudent = [
        StudentModel(name: "Thanh12", age: 12, status: true),
        StudentModel(name: "Thanh13", age: 13, status: true),
        StudentModel(name: "Thanh14", age: 14, status: true),
        StudentModel(name: "Thanh15", age: 15, status: true),
    ]
    var body: some View{
        VStack(content: {
            List{
                ForEach(self.$listStudent){ element in
                    StudentItem(model: element ,onTap: {
                        print("listStudent: \(listStudent)")
                    })
                }
                .onDelete(perform: onDelete)
            }
            Button("Add", action: onAdd)
            Button("Edit", action: onEdit)
        })
    }
    
    private func onDelete(index: IndexSet){
        listStudent.remove(atOffsets: index);
    }
    
    private func onAdd(){
        listStudent.append(StudentModel(name: "Add", age: 12, status: false))
    }
    
    private func onEdit(){

    }
}

struct ListDemo_Previews: PreviewProvider {
    static var previews: some View {
       ListDemo()
    }
}
