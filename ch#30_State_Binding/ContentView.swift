//
//  ContentView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/11.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    @State var myTitle: String =  "나의 일상"
    @EnvironmentObject var viewModel : MyViewModel
    
    var appTitle : String = ""
    
    init(appTitle: String ){
        self.appTitle = appTitle
    }
//    init(myViewModel: MyViewModel ){
//        self.viewModel = myViewModel
//    }
   
    var body: some View {
        ZStack{
            TabView{
                
                VStack{
                    Text(self.myTitle)
                        .font(.system(size: 30))
                    
                    Text("Hello world count:\(count)")
                        .padding()
                    Button(action: {
                        count += 1
                        viewModel.myTitle = "csnam life \(count) 일차"
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
                
                WeeklyView(count: $count)
                    .tabItem {  Label("weekly",systemImage: "car") }
                
            }//tableview
            .overlay(
                Text(self.appTitle).offset(y: -(UIScreen.main.bounds.height * 0.3))
                    .font(.system(size: 30))
                    .foregroundColor(Color.red)
            )
            
            //방법1 ;// zstack함께 따로 작성
            //Text(appTitle).offset(y: -(UIScreen.main.bounds.height * 0.3))
            //    .font(.system(size: 30))
            //방법2
            //.overlay( Text(A..)....)
             
        }// zstack
        .onReceive(viewModel.$myTitle, perform: { receivedMyTitle in
            print(" onReceive \(viewModel.$myTitle)")
            myTitle = receivedMyTitle
        })
    } // view
}//view

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(appTitle: "프리뷰 타이틀")
//    }
//}
