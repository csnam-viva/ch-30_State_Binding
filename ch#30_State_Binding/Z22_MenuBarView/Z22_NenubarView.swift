//
//  Z22_NenubarView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/16.
//

import SwiftUI

let myPets =  ["멍멍이 🐻‍❄️", "토끼 🐰", "여우 🦊"]

struct Z22_NenubarView: View {
    
    @State private var isShowing = false
    @State private var myText : String = ""
    
    @State private var selected : Int = 0
    var body: some View {
        
        let trailingItem = Button {
            print("aa")
            //self.isShowing = true
            //myText = "오늘도 파이팅"
            
        } label: {
            Image(systemName: "bell").imageScale(.large)
        }
           
        
        NavigationView{
            VStack{
                Spacer()
                Text("\(myPets[selected])")
                    .font(.system(size: 40))
                Text("오른쪽상단 클릭")
                Spacer()
            }
            //Text("Hello")
                .navigationTitle("안녕")
                .toolbar {
                    ToolbarItem(
                        placement: .navigationBarTrailing ,//.primaryAction,
                        content: {
                        Menu(content: {
                            Button {
                                isShowing = true
                                myText = "오늘도 파이팅"

                            } label: {
                                Label("menu1",systemImage: "flame.fill")
                            }
                           
                            Button {
                                isShowing = true
                                myText = "오늘도 파이팅2"

                            } label: {
                                Label("menu2",systemImage: "house.fill")
                            }
                            Section{
                                
                                Button {
                                    isShowing = true
                                    myText = "오늘도 파이팅3"

                                } label: {
                                    Label("menu3",systemImage: "house.fill")
                                }
                            }
                            Picker(selection: $selected, label: Text("동물선택")){
                                ForEach(myPets.indices, id: \.self){ idx in
                                    Text(myPets[idx]).tag(idx)
                                }
                            }
    
                        },label: {
                            Circle().foregroundColor(Color.green)
                                .frame(width: 50,height: 50)
                                .overlay(
                                    Label("more", systemImage: "ellipsis")
                                        .foregroundColor(Color.white))
                            
                        })
                    })
                }
                .alert(isPresented: $isShowing){
//                    Alert(
//                        title: Text("제목"),
//                        message: Text("내용"),
//                        primaryButton: .default(Text("확인"),action: {}),
//                        secondaryButton: .cancel(Text("취소"))
//                    )
                    Alert(
                        title: Text("제목"),
                        message: Text("내용"),
                        dismissButton: .default(Text("확인"))
                    )
                }
               
                //.navigationBarItems(trailing: trailingItem)
        
        }
        
    }
}

struct Z22_NenubarView_Previews: PreviewProvider {
    static var previews: some View {
        Z22_NenubarView()
    }
}



/*
 
 
 .alert(isPresented: $showingAlert) {
   Alert(
     title: Text("제목"),
     message: Text("내용"),
     primaryButton: .default(Text("확인"), action: { print("확인") }),
     secondaryButton: .cancel(Text("취소"))
   )
 }
 
 *var body: some View {
 let leadingItem = Button(action: { print("Leading") }) {
   Image(systemName: "bell")
     .imageScale(.large)
 }
 let trailingItem = Button(action: { print("Trailing") }) {
   Image(systemName: "gear")
     .imageScale(.large)
 }
 return NavigationView {
   Image("SwiftUI")
     .navigationBarItems(leading: leadingItem, trailing: trailingItem)
     .navigationBarTitle("내비게이션 바 아이템")
 }
 */
