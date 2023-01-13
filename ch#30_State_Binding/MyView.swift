//
//  MyView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/12.
//

import SwiftUI

struct MyView: View {
    var title: String
    var bgColor: Color
    
    var body: some View {
        ZStack{
            bgColor
                //.edgesIgnoringSafeArea(.all)
            Text(title)
                .foregroundColor(Color.white)
                .font(.system(size: 40))
                .fontWeight(.black)
           

        }
        
        
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "aa", bgColor: .blue)
    }
}
