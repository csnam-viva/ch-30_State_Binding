//
//  TextInput.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/12.
//

import SwiftUI

struct handleLogin
{
    var username : String
    var passwrd : String
}
struct TextInputView: View {
    @State private var userInput : String = ""
    @State private var passwdInput: String = ""
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Text("사용자 :")
                TextField("글자 입력",text: $userInput)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .border(Color(UIColor.separator))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    self.userInput = ""
                }) {
                    if (self.userInput.count > 0)
                    {
                        Image(systemName: "multiply.circle.fill")
                              .font(.system(size: 25))
                              .foregroundColor(Color.gray)
                    }
                 
                }
            }
                
            HStack{
                Text("패스워드 :")
                SecureField("password",text: $passwdInput){
                    
                }
                .border(Color(UIColor.separator))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    self.passwdInput = ""
                }) {
                    if (self.passwdInput.count > 0){
                        Image(systemName: "multiply.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(Color.gray)
                    }
                }
             }
            Text("입력한 비번: \(passwdInput)")

        }
        .padding(.horizontal,50)
        
    }
}

struct TextInput_Previews: PreviewProvider {
    static var previews: some View {
        TextInputView()
    }
}
