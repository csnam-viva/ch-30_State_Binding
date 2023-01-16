//
//  Z23_OneView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/16.
//

import SwiftUI

struct Z23_OneView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.green)
            .frame(height: 50)
            .cornerRadius(20)
            .padding(30)
            .overlay {
                HStack () {
                    Image(systemName: "book").foregroundColor(.white)
                    
                    VStack{
                        Text("책읽기").foregroundColor(.white)
                            .font(.system(size: 20))
                        Text("1 PM - 3 PM").foregroundColor(.white)
                            .font(.system(size: 10))
                    }
                }
            }
        
    }
}

struct Z23_OneView_Previews: PreviewProvider {
    static var previews: some View {
        Z23_OneView()
    }
}
