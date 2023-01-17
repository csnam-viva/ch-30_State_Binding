//
//  Z23_SegmentLayoutView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/17.
//

import SwiftUI

enum LayoutType: CaseIterable {
    case table,grid,triple
}
extension LayoutType {
    
    var colums : [GridItem]  {
        switch self {
        case .table:
            return [ GridItem(.flexible())]
        case .grid:
            return [ GridItem(.flexible()),
                     GridItem(.flexible())]
        case .triple:
            return [ GridItem(.adaptive(minimum: 100)) ]
            
        }
        
    }
    
}

struct MyModel3 : Identifiable{
    let id = UUID()
    var title : String
    var content : String
}
//https://gyuios.tistory.com/168
extension MyModel3{
    static var dummyDataArray : [MyModel2] {
        (1...200).map { num  in
            MyModel2(title: "타이틀\(num)", content: "콘텐츠:\(num)")
        }
    }
}
struct Z23_SegmentLayoutView: View {
    @State var selectedLayoutType: LayoutType = .table
    var dummyDataArray = MyModel3.dummyDataArray
    var body: some View {
        VStack{
           
            Picker(selection: $selectedLayoutType, label: Text("layout Type"), content: {
                ForEach(LayoutType.allCases, id: \.self, content: {  layoutType in
                        switch layoutType {
                        case .table:
                            Image(systemName: "list.dash")
                        case .grid:
                            Image(systemName: "square.grid.2x2.fill")
                        case .triple:
                            Image(systemName: "circle.grid.3x3.fill")
                        }
                    })
                }
                
            )
            .pickerStyle(SegmentedPickerStyle())
            .frame(width: 250)
           
            Picker(selection: $selectedLayoutType, label: Text("레이아웃 타입"), content: /*@START_MENU_TOKEN@*/{
                            ForEach(LayoutType.allCases, id: \.self , content: { layoutType in
                                switch layoutType {
                                case .table:
                                    Image(systemName: "list.dash")
                                case .grid:
                                    Image(systemName: "square.grid.2x2.fill")
                                case .triple:
                                    Image(systemName: "circle.grid.3x3.fill")
                                }
                            })
                        }/*@END_MENU_TOKEN@*/)
                        .frame(width: 250)
                        .pickerStyle(SegmentedPickerStyle())
                
            ScrollView{
                LazyVGrid(columns: selectedLayoutType.colums) {
                    ForEach(dummyDataArray){ dataItem in
                        switch selectedLayoutType {
                        case .table:
                            Rectangle().foregroundColor(.blue)
                                .frame(height: 100)
                        case .grid:
                            Rectangle().foregroundColor(.red)
                                .frame(height: 100)
                        case .triple:
                            Rectangle().foregroundColor(.green)
                                .frame(height: 100)
                            
                        }
                       
                    }
                    
                }
                .animation(.easeOut)
                .padding(.horizontal,10)
                
            }

        }
    }
}

struct Z23_SegmentLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        Z23_SegmentLayoutView()
    }
}
