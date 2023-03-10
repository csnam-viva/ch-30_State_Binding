//
//  TodayView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/11.
//

import SwiftUI

struct BeforeBedView: View {
    @Binding var count: Int
    @EnvironmentObject var viewModel : MyViewModel
    @State var myTitle: String = ""
    init(count: Binding<Int> = .constant(0)){
        _count = count
    }
    var body: some View {
        
        VStack{
            Text(myTitle)
                .padding()
                .foregroundColor(Color.blue)
            
            Text("Befor bed View count:\(count)")
                .padding()
            
            
            Button(action: {
                count += 1
                
            }, label: {
                Text("counting")
                    .foregroundColor(Color.yellow)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10.0)
            })
        }
        .onReceive(viewModel.$myTitle, perform: { paramTitle in
            print("BeforeView Recieve")
            myTitle = paramTitle
        })
    }
}

struct BeforeBedView_Preview: PreviewProvider {
    var count1 = 0
    static var previews: some View {
        BeforeBedView(count: .constant(1))
    }
}
