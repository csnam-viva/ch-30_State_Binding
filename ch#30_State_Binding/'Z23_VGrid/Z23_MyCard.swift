//
//  Z23_MyCard.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/17.
//

import SwiftUI

struct Z23_MyCard: View {
    
    var icon: String
    var title: String
    var start: String
    var end : String
    var bgColor: Color
    var body: some View {
        HStack (spacing: 20){
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            VStack (alignment: .leading, spacing: 0)
            {
                Divider().opacity(0)
                Text(title)
                   .fontWeight(.bold)
                   .font(.system(size: 23))
                   .foregroundColor(Color.white)
               Spacer().frame(height: 5)
               Text("\(start) - \(end)")
                   .foregroundColor(Color.white)
            }
        }
        .padding(20)
        .background(bgColor)
        .cornerRadius(20)
    }
}

struct Z23_MyCard_Previews: PreviewProvider {
    static var previews: some View {
        Z23_MyCard(icon: "book.fill", title: "책읽기", start: "1 PM", end: "3 PM", bgColor: Color.green)
    }
}
