//
//  ContentView.swift
//  demo
//
//  Created by Nguyen Thanh on 15/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = "Thanh"
    @State private var status = true
    
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//
//            Image(systemName: "multiply.circle.fill")
//                .font(.largeTitle)
//                .foregroundColor(.green)
            
            
//            Image("myImage")
//                .resizable()
//                .frame(width: Double.infinity, height: 200)
//                .clipShape(Circle()).overlay {
//                    return Circle().stroke(Color.green, lineWidth: 4
//                    );
//                }
//                .shadow(radius: 15)
            
            
            Text(name)
            Button(action: {
                if(self.status){
                    self.name = "Thanh Nguyen"
                }else{
                    self.name = "Thanh"
                }
                self.status = !self.status
                
            }, label: {
                Text("Change Me")
            })
            .font(.caption)
           
            AsyncImage(
                url: URL(string: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
                content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .overlay(content: {
                            Circle().stroke( Color.green, lineWidth: 4)
                        })
                        .frame(maxWidth: 200, maxHeight: 100)
                },
                placeholder: {
                    ProgressView()
                }
            )
        
            
                
            Text("If you're looking for random paragraphs, you've come to the right place. When a random word or a random sentence isn't quite enough, the next logical step is to find a random paragraph. We created the Random Paragraph Generator with you in mind. The process is quite simple. Choose the number of random paragraphs you'd like to see and click the button. Your chosen number of paragraphs will instantly appear.")
                .foregroundColor(Color.green)
                .padding(10.0)
                .monospacedDigit()
                .multilineTextAlignment(.leading)
                .fontWeight(.black)
                .fixedSize(horizontal: false, vertical: true)
                .opacity(1.0)
    
        }
        .padding()
    }
}

struct AvatarView: View {
    @State private var count1:Int = 1
    @State private var showData = false
    @State private var isOn: Bool = false
    @State private var sliderValue = 5.0
    @State private var editTextValue = ""

    
    var body: some View{

        VStack(alignment: .center, content: {

            HStack(content: {
                Image(systemName: "magnifyingglass")
                TextField("Input somethings", text:  $editTextValue)
            }).padding(.horizontal, 24)
                .textFieldStyle(MyTextFieldStyle())

        

            Text("Hello \(editTextValue)")

            Slider(value: $sliderValue, in: 0...10)
                .padding(.horizontal, 24)

            Text("Slider value: \(sliderValue)")

            Toggle("Switch button", isOn: $isOn)
                .padding(.horizontal, 24)


            Text("isOn value: \(String(isOn))")

            Text("count: \(count1)")
                .fontWeight(.medium)
            
            Divider()
                .frame(height: 2)
                .background(Color.green)
                .padding(.horizontal, 24)
        
            
            Button(action: {
                self.count1 += 1
            }, label: {
                Text("Add")
            })

        })
    }
}

struct CustomBackgroundAndBorder: View {
    @State private var editTextValue: String = ""
    var body: some View{
        HStack {
            TextField("", text:  $editTextValue, prompt: Text("Input somethings")
                .foregroundColor(Color.gray.opacity(0.3)))
            .onSubmit {
                print("$editTextValue: \(editTextValue)")
            }
            .onChange(of: editTextValue) { newValue in
                print("on change: \(newValue)")
            }
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color.black)
        }
        .padding()
        .foregroundColor(Color.black)
        .accentColor(Color.black)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.gray, radius: 3, x: 2, y: 2)
        .shadow(color: Color.white, radius: 3, x: -2, y: -2)
        .padding(.horizontal, 24)
    }
}


//HStack(content: {
//                   Image(systemName: "magnifyingglass")
//                   TextField("Input somethings", text:  $editTextValue)
//               })
//               .modifier(CustomStructModifier(borderRadius: 12, startColor: Color.red, endColor: Color.green, foregroundColor: Color.white))
//           }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {

//        ContentView()
//        AvatarView()
        CustomBackgroundAndBorder()

        
        
    }
}
