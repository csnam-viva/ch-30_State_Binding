//
//  Closur04.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/13.
//

import SwiftUI

struct Closur04: View {
    
    var myClosure: (String,String) -> String = { first, second  in
        
         return (first) + " and " + (second)
    }
    
    
    var sumStr : String = ""
    
    var body: some View {
       
       let dispName = myClosure("A","B")
        VStack{
            Text(dispName)
//            Text(AddOperate(first: 1, second: 6 ))
//            Text(
//                closureOperator(first: 3, second: 5) { f,s in
//                     f + s
//                }
//            )
//            Text(
//                closureOperator(first: 3, second: 5) { f,s in
//                    f * s * 5
//                }
//            )
            
            var aa = closureOperator(first: 3, second: 2)  { a, b in
                a * b + 10
            }
            var  aa1 = closureOperator(first: 2, second: 3, calculate: { a, b in
                a * b + 10
            })
            
         
            Text(aa)
            Text(aa1)
            
//            closurePrint2(one: 3) { param1 in
//                print("one \(param1) ")
//            } secondOne: { param2 in
//                print("two  \(param2) ")
//            }

        }
        
       
    }
    func closurePrint2(one: Int ,firstOne: (Int) -> (), secondOne: (Float) -> ()) {
          firstOne(one)
          secondOne(Float(one))
    }
    func closureOperator(first: Int, second: Int, calculate: (Int, Int) -> Int) -> String {
        return String( calculate(first, second) )
    }
    
    func AddOperate(first: Int, second: Int) -> String {
        return String( first + second )
    }
    func SubOperate(first: Int, second: Int) -> String {
        return String( first - second )
    }
    
//    func testClosure(first: String,second: String, action: (String,String)->(String) {
//        action(first,second)
//    }
}

struct Closur04_Previews: PreviewProvider {
    static var previews: some View {
        Closur04()
    }
}
