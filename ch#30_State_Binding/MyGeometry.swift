//
//  MyGeometry.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/12.
//

import SwiftUI

struct MyGeometry: View {
    var nums : [String] = ["1","2","3","4"]
    var colors : [Color] = [.blue,.orange,.purple,.brown]
    
    var count = 0
    var body: some View {
        GeometryReader { geometry in
            VStack{
                HStack (spacing: 1){
                    
                    ForEach(nums, id: \.self){ num in
                        Text(num)
                            .foregroundColor(Color.white)
                            .frame(width: geometry.size.width / 4)
                            .background(Color.green)
                            .font(.largeTitle)
                            .fontWeight(.ultraLight)
                    }
                    
                }
                .background(Color.yellow)
//                HStack (spacing: 1){
//
//                    ForEach(nums, id: \.self) { num in
//                        Text(num)
//                            .foregroundColor(Color.white)
//                            .frame(width: 50)
//                            .background(Color.blue)
//                            .font(.largeTitle)
//                            .fontWeight(.ultraLight)
//
//                    }
//
//                }
//                .background(Color.black)
            } //vstack
            .background(Color.red)
        } // geometry
        .background(Color.black)
    }
    
}

struct MyGeometry_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometry()
    }
}
