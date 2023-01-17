//
//  Z23_VGridView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/16.
//

import SwiftUI

enum ShapeSelector{
    case line
    case circle
    case rectangle
}
struct MyModel2 : Identifiable{
    let id = UUID()
    var title : String
    var content : String
}
//https://gyuios.tistory.com/168
extension MyModel2{
    static var dummyDataArray : [MyModel2] {
        (1...200).map { num  in
            MyModel2(title: "타이틀\(num)", content: "콘텐츠:\(num)")
        }
    }
}

struct Z23_VGridView: View {
    
    @State private var selectedTab = ShapeSelector.line
    
    var dummyDataArray = MyModel.dummyDataArray
    var count = 0
    
    var body: some View {
        VStack {
            Picker("", selection: $selectedTab,
                   content: {
                
                Image(systemName: "list.bullet").tag(ShapeSelector.line)
                Image(systemName: "rectangle.split.2x2.fill").tag(ShapeSelector.circle)
                Image(systemName: "rectangle.split.3x3.fill").tag(ShapeSelector.rectangle)
                
                
            }).pickerStyle(SegmentedPickerStyle())
            
            ScrollView {
                if selectedTab == ShapeSelector.line {
                    LazyVGrid(columns:  [GridItem(.fixed(400))]  ) {
                        
                        ForEach(dummyDataArray.indices) { array in
                            Z23_OneView()
                        }
                    }
                }
//                else if selectedTab == ShapeSelector.circle {
 //                  LazyVGrid(columns:  [GridItem(),GridItem()]  ) {
//                        print("aa")
//                        ForEach(Array(zip(dummyDataArray.indices,dummyDataArray))) { idx, item  in
//                            Z23_FourView(count: idx )
//                        }
//                        for (idx) in dummyDataArray.indices{
//                            Z23_FourView(count: idx )
//                        }
//                        ForEach(dummyDataArray.indices) { array in
//                            Z23_FourView(count: array )
//                        }
//                        ForEach(dummyDataArray.indices,id: \.self) { idx in
//                            self.count = self.count + 1
//                            Z23_FourView(count: self.count)
//                        }
//                    }
//                }
                else if selectedTab == ShapeSelector.rectangle {
                    LazyVGrid(columns:  [GridItem(.fixed(100)),GridItem(.fixed(100))] ) {
                        
                        ForEach(dummyDataArray.indices,id: \.self) { array in
                            Rectangle().foregroundColor(.black)
                                .frame(height: 100)
                        }
                    }
                }
            }
            
            
            
        } //vstack
    }
}

struct Z23_VGridView_Previews: PreviewProvider {
    static var previews: some View {
        Z23_VGridView()
    }
}

/*
VStack (alignment: .center ){
    Picker("",
           selection: $selectValue,
           content: {
        Text("수박").tag(0)
        Text("딸기").tag(1)
        Text("참외").tag(2)
    } )
    .pickerStyle(InlinePickerStyle())
    .clipped()
    .border(Color.red, width: 10)
    
    Picker(selection: $selectValue,
           label: Text(""),
           content: {
        Text("수박").tag(0)
        Text("딸기").tag(1)
        Text("참외").tag(2)}
    )
    //.background(Color.red)
    .pickerStyle(SegmentedPickerStyle())
*/
