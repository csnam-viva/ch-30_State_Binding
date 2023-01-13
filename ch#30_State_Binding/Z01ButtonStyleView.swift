//
//  ButtonStyle.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/13.
//

import SwiftUI



struct ButtonStyleView: View {
    @State var msg: String = " "
    
    var body: some View {
        VStack{
            
            Text(msg)
            Button(
               action: {
                   SelectButton(button: "탭")
            }, label: {
               Text("TAP")
            })
            .buttonStyle(MyButtonStyle(fgColor: .white, bgColor: .blue, btnStyle: .tab))
         
            Button(
               action: {
                   SelectButton(button: "롱클릭")
            }, label: {
               Text("롱클릭")
            })
            .buttonStyle(MyRotateButtonStyle(fgColor: .white, bgColor: .green))
            
            
        }
    }
    func SelectButton(button: String) {
        print(button)
        msg = button
    }
}

struct ButtonStyleView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleView()
    }
}
