//
//  MyGeometry_Vertical.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/12.
//

import SwiftUI
enum Index {
    case one, two, three
}

struct MyGeometry_Vertical: View {
    
    @State var index : Index = .one
    
    var body: some View {
        
        GeometryReader { geo in
            VStack (spacing: 0){
                
                Button(action: {
                    print("1번 클릭 ")
                    withAnimation{
                        self.index = .one
                    }
                    
                }){
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.ultraLight)
                        .frame(width: 100, height: geo.size.height / 3)
                        .padding(.horizontal,self.index == .one ? 50 : 0 )
                        .background(Color.green)
                        .foregroundColor(Color.white)
                      
                        
                }
                
                Button(action: {
                    print("2번 클릭 ")
                    self.index = .two
                } ){
                    Text("2")
                        .foregroundColor(Color.white)
                        .frame(width: 100, height: geo.size.height / 3)
                        .padding(.horizontal, self.index == .two ? 50 : 0 )
                        .background(Color.yellow)
                        .font(.largeTitle)
                        .fontWeight(.ultraLight)
                }
                
                Button(action: {
                    print("3번 클릭 ")
                    withAnimation{
                        self.index = .three
                    }
                }){
                    Text("3")
                        .foregroundColor(Color.white)
                        .frame(width: 100, height: geo.size.height / 3)
                        .padding(.horizontal, self.index == .three ? 50 : 0 )
                        .background(Color.blue)
                        .font(.largeTitle)
                        .fontWeight(.ultraLight)
                }
               
               
            }
            .background(Color.brown)
            //.frame(width: geo.size.width, height: geo.size.height, alignment: .center)
            .position(CGPoint(
                x: geo.frame(in: .local).midX, y: geo.frame(in: .local).midY
            ))
            
        }
                
    }
}

struct MyGeometry_Vertical_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometry_Vertical()
    }
}
