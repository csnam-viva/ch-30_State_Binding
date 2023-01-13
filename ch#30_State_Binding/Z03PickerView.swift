//
//  Z03PickerView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/13.
//

import SwiftUI

struct Z03PickerView: View {
    @State private var selectValue = 0
    var body: some View {
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
            //.pickerStyle(MenuPickerStyle())
            //.pickerStyle(InlinePickerStyle())
            //.pickerStyle(NavigationLinkPickerStyle())
            
        }//vstack
        
    }
}

struct Z03PickerView_Previews: PreviewProvider {
    static var previews: some View {
        Z03PickerView()
    }
}
