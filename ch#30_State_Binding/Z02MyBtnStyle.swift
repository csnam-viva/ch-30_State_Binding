//
//  Z02MyBtnStyle.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/13.
//
import SwiftUI

enum ButtonType
{
    case tab
    case long
    
}
struct MyButtonStyle: ButtonStyle{
    var  fgColor : Color
    var  bgColor : Color
    var  btnStyle : ButtonType

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 20))
            .foregroundColor(fgColor)
            .padding()
            .background(bgColor)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 1.3 :  1.0)
//            .onTapGesture {
//                if (self.btnStyle == .tab){
//                    let haptic = UIImpactFeedbackGenerator(style: .light)
//                    haptic.impactOccurred()
//
//                }
//            }
//            .onLongPressGesture  {
//                if (self.btnStyle == .long){
//                    let haptic = UIImpactFeedbackGenerator(style: .heavy)
//                    haptic.impactOccurred()
//
//                }
//            }
    }
}

struct Previews_Z02MyBtnStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("press" )
        }, label: {
            Text("CS WORLD")
        })
        .buttonStyle(MyButtonStyle(fgColor: .white, bgColor: .blue, btnStyle: .tab))
    }
}
