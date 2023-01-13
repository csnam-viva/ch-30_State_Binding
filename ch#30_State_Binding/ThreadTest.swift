//
//  ThreadTest.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/13.
//

import SwiftUI


class BackgroundViewModel: ObservableObject{
    @Published var dataArray: [String] = []
    
    func fetchData(){
        DispatchQueue.global(qos: .background).async {
            let newData = self.downLoadData()
            self.dataArray = newData
        }
        
        
    }
    
    private func downLoadData() ->[String] {
        var data: [String] = []
        for i in 0...20{
            // 방법 1
            Thread.sleep(forTimeInterval: 1)
            // 방법 2
            //DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            print("append \(i)")
            data.append("\(i)")
           // }
        }
        return data
    }
//    func Sleep() async {
//        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
//        // Put your code which should be executed with a delay here
//    }
    //try await Task.sleep(nanoseconds: 1_000_000_000)
    
}


struct ThreadTest: View {
    var bvm = BackgroundViewModel()
    @State var datas: [String] = []
    @State var count: Int = 0
    //@Binding var count1: Int
    //@EnvironmentObject var viewModel : BackgroundViewModel
    
    var body: some View {
        ScrollView{
            LazyVStack{
                Button(action:  {
                    count = count + 1
                }){
                    Text("count = \(count) ")
                        .font(.system(size: 20))
                        .frame(width: 100)
                        
                }
                .buttonStyle(.plain)
                    
                Text("ThreadTest")
                    .font(Font.title2.bold())
                    .onTapGesture {
                        print("fetch data")
                        bvm.fetchData()
                        //datas = bvm.fetchData()
                    }
                ForEach(datas, id: \.self ){ data in
                    Text(data)
                        .font(.headline)
                        .foregroundColor(Color.orange)
                }
                
            }
        }
//        .onReceive(viewModel.$dataArray, perform: { recvArray in
//            print(" onReceive \(viewModel.$dataArray)")
//            datas = recvArray
//        })
        .onReceive(bvm.$dataArray, perform: { recvArray in
            print(" onReceive \(bvm.$dataArray)")
            datas = recvArray
        })
    }
    
    
}



struct ThreadTest_Previews: PreviewProvider {
    static var previews: some View {
        ThreadTest()
    }
}
