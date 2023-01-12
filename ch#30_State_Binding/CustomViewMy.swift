//
//  CustomViewMy.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/12.
//

import SwiftUI

enum TabIndex {
    case home
    case profile
    case cart
}
struct MyCustomView: View {
    @State var tabIndex: TabIndex = .home
    
    
    var body: some View {
        GeometryReader { geometry in
           
        TabView {
            MyView(title: "장바구니", bgColor: Color.yellow)
                .tabItem {  Label("home",systemImage: "house.fill") }
            MyView(title: "카트", bgColor: Color.red)
                .tabItem {  Label("home",systemImage: "car.fill") }
            MyView(title: "주문목록", bgColor: Color.green)
                .tabItem {  Label("home",systemImage: "book.fill") }
        }
               
// Label("today",systemImage: "house.fill")
           
        }
    }
}

struct MyCustomView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomView()
    }
}
