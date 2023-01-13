//
//  Z03_1PickerView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/13.
//

import SwiftUI

struct MyFriend: Identifiable {
    
    var id = UUID()
    var name : String
    var school : School
}
enum School : String {
    case element = "초기화"
    case middle = "중학교"
    case hight = "고등학교"
}

struct Z03_1PickerView: View {
    @State private var selectValue = 0
    
    @State private var friends = [MyFriend]()
    
    init(){
        var newList = [MyFriend]()
        for i in 0...30{
            let oneFriend = MyFriend(name: "홍길동 \(i)",
                                     school:   )
        }
    }
       
    var body: some View {
        VStack{
            VStack (alignment: .center ){
                Text("filteredvalue \(selectValue)")
                Text("언제동창")
                    .position(x: 0)
                    .padding(50)
                    .frame(height: 20)
                
                Picker("",
                       selection: $selectValue,
                       content: {
                    Text("초등학교").tag(0)
                    Text("중학교").tag(1)
                    Text("고등학교").tag(2)
                } )
                .pickerStyle(SegmentedPickerStyle())
            
            }//vstack
            
            VStack{
                List(friends){
                    Text( $0.name)
                }
            }
        }
        
    }
}

struct Z03_1PickerView_Previews: PreviewProvider {
    static var previews: some View {
        Z03_1PickerView()
    }
}
