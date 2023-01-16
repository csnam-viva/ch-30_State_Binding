//
//  Z22_NenubarView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/16.
//

import SwiftUI

struct Z22_NenubarView: View {
    
    @State private var isShowing = false
    var body: some View {
        
        let trailingItem = Button {
            print("aa")
            self.isShowing = true
        } label: {
            Image(systemName: "bell").imageScale(.large)
        }
            .alert(isPresented: $isShowing){
                Alert(
                    title: Text("제목"),
                    message: Text("내용"),
                    primaryButton: .default(Text("확인"),action: {}),
                    secondaryButton: .cancel(Text("취소"))
                )
            }
        
        NavigationView{
          
            Text("Hello")
                .navigationTitle("안녕")
                .toolbar {
                    ToolbarItem(
                        placement: .navigationBarTrailing ,//.primaryAction,
                        content: {
                        Menu(content: {
                            
                            
                            Text("menu 1")
                            Text("menu 1")
                            Text("menu 1")
                            
                            
                            
                        },label: {
                            Circle().foregroundColor(Color.green)
                                .frame(width: 50,height: 50)
                                .overlay(
                                    Label("more", systemImage: "ellipsis")
                                        .foregroundColor(Color.white))
                            
                        })
                    })
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
