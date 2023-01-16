//
//  Z21_ProfileView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/16.
//

import SwiftUI

struct Z21_ProfileView: View {
    var color1 = Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
    var color2 = Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
   
        
    var body: some View {
//        Image("apple")
//            .resizable()
//            .frame(width: 100, height: 100)
           Rectangle()
            .foregroundColor(color1)
            .frame(width: 100, height:100)
            .cornerRadius(10)
            .overlay{
                Text("프로필")
                    .font(.system(size: 30))
                    .fontWeight(.black)
                    .foregroundColor(.white)
            }
                             
    }
}

struct Z21_ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Z21_ProfileView()
    }
}
