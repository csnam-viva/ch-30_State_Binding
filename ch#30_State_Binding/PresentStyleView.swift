//
//  PresentStyleView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/13.
//

import SwiftUI


/// presentationMode를 이용한 dismiss 예시
struct PresentStyleView: View {
    
    var body: some View {
        
        PresentStyle01()
    }
}

extension PresentStyleView {
    
    struct PresentStyle01 : View {
        
        @State private var showingSheet = false
        var body: some View{
           
            Button {
                print("aaa")
                self.showingSheet.toggle()
            } label: {
                Text("Present1")
                    .font(.title).foregroundColor(.blue)
            }
            .sheet(isPresented: $showingSheet,
                   onDismiss: { print("dismiss") },
                   content: { PresentStyleView.PresentStyle02() })
            
        }
        
        
    }
    
    struct PresentStyle02 : View {
        
        @Environment (\.presentationMode) var presentMode
        var body: some View{
           
            Button {
                if self.presentMode.wrappedValue.isPresented {
                    self.presentMode.wrappedValue.dismiss()
                }
            } label: {
                Text("Tap to dismiss")
                    .font(.title).foregroundColor(.red)
            }
            
        }
        
    }
    
}


struct PresentStyleView_Previews: PreviewProvider {
    static var previews: some View {
        PresentStyleView()
    }
}
