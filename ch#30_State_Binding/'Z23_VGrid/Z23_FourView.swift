//
//  Z23_FourView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/16.
//

import SwiftUI

struct Z23_FourView: View {
    
    var title : String
    var content : String
    
//    @Binding var count: Int
//    init ( count: Binding<Int> = .constant(0)){
//        _count = count
//    }
//    @State var nOrder: Int = 0
//    init (count: Int){
//        self.nOrder = count
//    }
    var body: some View {
        
        Rectangle()
            .foregroundColor(.mint)
            .frame(width: 200, height: 100)
            .cornerRadius(20)
            .padding(30)
            .overlay(
                VStack {
                    Circle().frame(width: 30,height: 30)
                    Text("\(title)").foregroundColor(.white)
                           .font(.system(size: 10))
                    Text("\(content)").foregroundColor(.white)
                           .font(.system(size: 10))
//                    Text("타이틀: \(count)").foregroundColor(.white)
//                           .font(.system(size: 10))
//                    Text("서브타이틀:\(count)").foregroundColor(.white)
//                           .font(.system(size: 10))
                }
            )
            
    }
}

struct Z23_FourView_Previews: PreviewProvider {
    static var previews: some View {
        //Z23_FourView(count: .constant(0))
        Z23_FourView(title: "title", content: "content")
    }
}
