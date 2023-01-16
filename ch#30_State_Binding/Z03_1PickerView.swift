//
//  Z03_1PickerView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/13.
//

import SwiftUI

struct MyFriend: Identifiable,Hashable{
    
    var id = UUID()
    var name : String
    var school : School
}
enum School : String,CaseIterable {
    case element = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
}

func prepareData()-> [MyFriend] {
    
    var newList = [MyFriend]()
    
    for i in 0...20 {
        let oneFriend = MyFriend(name: "홍길동 \(i)",
                             school: School.allCases.randomElement()!)
        newList.append(oneFriend)
    }
    return newList
}
    


struct Z03_1PickerView: View {
    //@State private var selectValue = School
    @State private var filiterValue = School.element
    @State private var friends = [MyFriend]()
    
    init(){
//        함수로 이동
//        var newList = [MyFriend]()
//
//        for i in 0...20 {
//            let oneFriend = MyFriend(name: "홍길동 \(i)",
//                                 school: School.allCases.randomElement()!)
//            newList.append(oneFriend)
//        }
        
        _friends = State(initialValue: prepareData())
    }
       
    var body: some View { 
        VStack{
            VStack (alignment: .center ){
                Text("filteredvalue: \(filiterValue.rawValue)")
                Text("언제동창")
                    .position(x: 0)
                    .padding(50)
                    .frame(height: 20)
                
                Picker("",
                       selection: $filiterValue,
                       content: {
                            Text("초등학교").tag(School.element)
                            Text("중학교").tag(School.middle)
                            Text("고등학교").tag(School.high)
                        } )
                       .pickerStyle(SegmentedPickerStyle())
            
            }//vstack
            List{
                ForEach(friends.filter{ filterItem in
                    //$0.school == filiterValue
                    filterItem.school == filiterValue
                }) { frienditem in
                    GeometryReader{ geometryProxy in
                        HStack{
                            Text("Name: \(frienditem.name)")
                                .frame(width: geometryProxy.size.width / 3 )
                            Divider()
                            Text("School: \(frienditem.school.rawValue)" )
                                .frame(width: geometryProxy.size.width / 2 )
                        }
                    }
                } // foreach
            } // list
            
//                List{
//                    ForEach(friends ,id: \.self) { frienditem in
//                        GeometryReader{ geometryProxy in
//                            HStack{
//
//                                Text("Name: \(frienditem.name)")
//                                    .frame(width: geometryProxy.size.width / 3 )
//                                Divider()
//                                Text("School: \(frienditem.school.rawValue)" )
//                                    .frame(width: geometryProxy.size.width / 2 )
//                            }
//                        }
//                    }
//                    //Text( $0.name)
//                }
            
        }
        
    }
}

struct Z03_1PickerView_Previews: PreviewProvider {
    static var previews: some View {
        Z03_1PickerView()
    }
}
