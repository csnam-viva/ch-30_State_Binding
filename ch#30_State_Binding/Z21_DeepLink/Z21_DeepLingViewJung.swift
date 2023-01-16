//
//  Z21_DeepLingViewJung.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/16.
//

import SwiftUI

struct Z21_DeepLingViewJung: View {
    @State var selectedTab = 0
    var body: some View {
        
        TabView(selection: $selectedTab,
          content: {
            //Text("Tab 1").tabItem { Text("tab_one").tag(1) }
            //Text("Tab 2").tabItem { Text("tab_two").tag(1) }
            TodosView().tabItem {
                VStack{
                    Image(systemName: "list.bullet")
                    Text("Todo List")
                }
            }.tag(1)
            
            Z21_ProfileView().tabItem {
                VStack{
                    Image(systemName: "person.circle.fill")
                    Text("profile")
                }
            }.tag(2)
         })
        .onOpenURL { url in
          // 열려야하는 부분 처리
        }
        
    }
}

struct Z21_DeepLingViewJung_Previews: PreviewProvider {
    static var previews: some View {
        Z21_DeepLingViewJung()
    }
}

enum TabIndentifier: Hashable{
    case todos
    case profile
}
enum PageIdentifier: Hashable{
    case totoItem(id: UUID)
}
extension URL {
    var isDeeplink : Bool {
        return scheme == "deeplink-swiftui"
        
    }
    
    var tabIdentifier: TabIndentifier? {
        guard isDeeplink else {
            return nil
        }
        switch host {
        case "todos":
             return TabIndentifier.todos
        case "profile":
            return TabIndentifier.profile
        default:
            return  nil
        }
    }
    var pageIdentifier: PageIdentifier? {
        guard let tabid = tabIdentifier,
              pathComponents.count > 2,
              let uuid = UUID(uuidString: pathComponents[1])
              else { return nil }
        switch tabid {
        case .todos:
            return .totoItem(id: uuid)
        default:
            return nil
        }
    }
    
}
