//
//  Z02MyRotateBtnStyle.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/13.
//

import SwiftUI

struct MyRotateButtonStyle: ButtonStyle{
    var  fgColor : Color
    var  bgColor : Color
    

    func makeBody(configuration: Configuration) -> some View {
            configuration.label
            .font(.system(size: 20))
            .foregroundColor(fgColor)
            .padding()
            .background(bgColor)
            .cornerRadius(20)
            .rotationEffect(configuration.isPressed ? .degrees(90) : .degrees(0))
            
    }
}

struct MyRotateButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("press" )
        }, label: {
            Text("CS WORLD")
        })
        .buttonStyle(MyRotateButtonStyle(fgColor: .white, bgColor: .blue))
    }
}
