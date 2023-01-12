//
//  WeeklyView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/12.
//

import SwiftUI

struct WeeklyView: View {
    
    @Binding var count: Int
    @EnvironmentObject var viewModel : MyViewModel
    @State var myTitle: String = ""
    
    init(count: Binding<Int> = .constant(99)){
        _count = count
    }
    var body: some View {
                
        VStack{
            Text(self.myTitle)
                .font(.system(size: 30))
                .foregroundColor(Color.orange)
            
            Text("WeeklyView count:\(count)")
                .padding()
       
            
            Button(action: {
                count += 1
                
            }, label: {
                Text("counting")
                    .foregroundColor(Color.yellow)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10.0)
            })
        }
        .onReceive(viewModel.$myTitle, perform: { paramTitle in
            print("BeforeView Recieve")
            myTitle = paramTitle
        })
    }
    
}

struct WeeklyView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyView(count: .constant(2))
    }
}
