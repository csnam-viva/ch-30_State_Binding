//
//  TodosView.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/16.
//

import Foundation
import SwiftUI


struct TodoItem : Identifiable , Hashable{
    var id: UUID
    var title:  String
}

func prepareData()-> [TodoItem] {
    
    var newList =  [TodoItem]()
    for i in 0...20 {
        
        let newTodo = TodoItem(id:UUID(), title: "my job (\(i))")
        newList.append(newTodo)
    }
    return newList
}
struct TodosView: View{
    @State var todoItems = [TodoItem]()
    @State var activeUUID: UUID? 
    
    init() {
        _todoItems  = State(initialValue: prepareData())
    }
    var body: some View{
       
       NavigationView{
            List(todoItems) { todoItem in
                NavigationLink(
                    destination: Text(todoItem.title),
                    tag: todoItem.id,
                    selection: $activeUUID,
                    label: {
                        Text(todoItem.title)
                        
                    })
            }
            .navigationTitle(Text("할일 목록"))
           
//            .onOpenURL(perform: { url in
//                if case .todoItem(let id) = url.detailPage {
//                    activeUUID = id
//                }
//
//            })
        }
    }
    
}

struct Previews_Z21_TodosView_Previews: PreviewProvider {
    static var previews: some View {
        TodosView()
    }
}
