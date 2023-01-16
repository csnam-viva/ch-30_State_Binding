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
    
   
    var body: some View {
        VStack {
            Picker("", selection: $selectedTab,
                   content: {
                
                Image(systemName: "list.bullet")
                Image(systemName: "rectangle.split.2x2.fill")
                Image(systemName: "rectangle.split.3x3.fill")
                
                
            }).pickerStyle(SegmentedPickerStyle())
            ScrollView()  {
                LazyVGrid(columns: [GridItem(.fixed(400))]) {
                    
                    
                    ForEach(dummyDataArray.indices) { array in
                        
                        Z23_OneView()
                    }
                }
            }
        }
            
        
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
