//
//  ContentView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/11.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    var appTitle : String
    
    init(appTitle: String ){
        self.appTitle = appTitle
    }
    
    var body: some View {
        ZStack{
            TabView{
                VStack{
                    Text("Hello world count:\(count)")
                        .padding()
                    Button(action: {
                        count += 1
                        //appTitle = "숫자세기 \( count ) "
                    }, label: {
                        Text("counting")
                            .foregroundColor(Color.yellow)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    })
                }
                .tabItem {  Label("today",systemImage: "folder.fill") }
                //Spacer()
                BeforeBedView(count: $count)
                    .tabItem {  Label("자기전에",systemImage: "pencil.circle") }
                Text("aaa")
                    .tabItem {  Label("111",systemImage: "pencil.circle") }
                
            }//tableview
            .overlay(
                Text(self.appTitle).offset(y: -(UIScreen.main.bounds.height * 0.3))
                    .font(.system(size: 30))
                    .foregroundColor(Color.red)
            )
            
            //방법1 ;// zstack함께 따로 작성
            //Text(appTitle).offset(y: -(UIScreen.main.bounds.height * 0.3))
            //    .font(.system(size: 30))
        }// zstack
    } // view
}//view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(appTitle: "프리뷰 타이틀")
    }
}
