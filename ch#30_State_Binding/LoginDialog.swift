//
//  LoginDialog.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/13.
//

import SwiftUI

struct LoginDialog: View {
    @State private var isShowingAlert: Bool = false
    
    var body: some View {
        
        HStack{
            Button {
                print("isShowingAlert press")
                self.isShowingAlert = true
            } label: {
                Text("로그인")
            }
           
            .alert(isPresented: $isShowingAlert) {
                Alert(title: Text("로그인"),
                      message: Text("정말 로그인하시겠습니까"),
                      primaryButton: .default(Text("확인"), action: { print ("확인") } ),
                      secondaryButton: .cancel(Text("취소"))
                )
                
            }
            .buttonStyle(MyButtonStyle(fgColor: .white, bgColor: .blue, btnStyle: .tab))
            
            Button {
                print("a")
            } label: {
                Text("취소")
            }
            .buttonStyle(MyButtonStyle(fgColor: .white, bgColor: .blue, btnStyle: .tab))
            
        }
    }
}

struct LoginDialog_Previews: PreviewProvider {
    static var previews: some View {
        LoginDialog()
    }
}
