//
//  Z21_DeepLinkView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/16.
//

import SwiftUI



struct Z21_DeepLinkView: View {
    var todoList = [String]()
    
    init(){
        for i in 0...20 {
            todoList.append("ToDo \(i)")
        }
    }
    
    var body: some View {
        NavigationView{
            VStack{
                               
                TabView{
                    List{
                        ForEach(todoList, id: \.self) { oneItem in
                            NavigationLink{
                                Text(oneItem)
                            } label: {
                                Text(oneItem)
                            }
                            
                        }
                        
                    }.tabItem { Label("today",systemImage: "folder.fill") }
                        //.navigationBarTitle("오늘의 할일 리스트")
                        //.edgesIgnoringSafeArea(.bottom)
                    
                    Z21_ProfileView()
                        .tabItem { Label("profile",systemImage: "house.fill")
                    }
                }
            }
            .navigationBarTitle("오늘의 할일 타이틀")
        }
        
    }
}

struct Z21_DeepLinkView_Previews: PreviewProvider {
    static var previews: some View {
        Z21_DeepLinkView()
    }
}


