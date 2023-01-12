//
//  CustomView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/12.
//

import SwiftUI


struct View1: View {
    var body: some View {
        GeometryReader{ geo in
            VStack{
                Text("장바구니")
                    .foregroundColor(Color.white)
                    .font(.system(size: 50))
                    .position(CGPoint(
                        x: geo.frame(in: .local).midX, y: geo.frame(in: .local).midY
                    ))
            }
            .background(Color.brown)
            
        }
        //.background(Color.yellow)
                
        
    }
}

struct View2: View {
    var body: some View {
        GeometryReader{ geo in
            VStack{
                Text("책담기")
                    .foregroundColor(Color.white)
                    .font(.system(size: 50))
            }
            //.background(Color.blue)
            .position(CGPoint(
                x: geo.frame(in: .local).midX, y: geo.frame(in: .local).midY
            ))
        }
        .background(Color.purple)
    }
}
struct View3: View {
    var body: some View {
        GeometryReader{ geo in
            VStack{
                Text("자동차")
                    .foregroundColor(Color.white)
                    .font(.system(size: 50))
            }
            //.background(Color.blue)
            .position(CGPoint(
                x: geo.frame(in: .local).midX, y: geo.frame(in: .local).midY
            ))
        }
        .background(Color.green)
        
    }
    
        
}

struct CustomView: View {
    var body: some View {
        
        TabView{
           
            View1()
                .tabItem { Label("today",systemImage: "house.fill") }
            View2()
                .tabItem { Label("book",systemImage: "book.fill") }
            View3()
                .tabItem { Label("car",systemImage: "car.fill") }
            
        }
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
    }
}
