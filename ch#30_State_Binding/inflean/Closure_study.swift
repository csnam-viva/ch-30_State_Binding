//
//  Closure_study.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/13.
//
/*
import Foundation
import UIKit


class AAA
{
    import UIKit

    func condition( first: () -> Bool){
        if first() == true {
            print("참")
        }
        else {
            print("거짓")
        }
    }

    func condition2(first: Int, calc:(Int) -> Bool){
        if calc( first) == true {
            print("참")
        }
        else {
            print("거짓")
        }
    }
    
   // condition( first: {
   //     4 > 2
   // })

    let closure1 =  { ()-> () in
        Swift.print("closure1")
    }

   // closure1()

    let closure2 = { (name: String ) -> String in
        return  "Hello " + name
    }
    //print( closure2("abc") )


    func doSomething( closure: () -> () ) {
        closure()
    }

//    doSomething(closure: {
//        print("Hello")
//
//    })

    func doSomething_PrintNum( closure: (Int) -> () )  {
        var one  = 1
        var two  = 3
        closure( one + two)
    }

//    doSomething_PrintNum(closure: { ab in
//        print("PrintNum : \(ab)")
//
//    })
    //--------------------
    func doSomething_PrintAdd( closure: (Int,Int) -> () )  {
        var one  = 1
        var two  = 3
        closure( one , two)
    }

//    doSomething_PrintAdd { aa, bb in
//        print( String( aa + bb) )
//    }

    func do_PrintAdd1(first: Int, second: Int ,closure: (Int,Int) -> () )  {
         closure(first , second)
    }

//    do_PrintAdd1(first: 1, second: 4) { a, b in
//        print("\(a) and \(b)" )
//    }
//    do_PrintAdd1(first: 2, second: 5, closure: { a, b in  print("\(a) and \(b)") })

    func do_returnAdd(first: Int, second: Int, closure: (Int,Int) -> String)
    ->String
    {
        return closure(first,second)
    }

    let addValue = do_returnAdd(first: 4, second: 5, closure: { a,b in
        print(String(a))
        print(String(b))
        return String( a + b )
    })
    print(addValue)
    //


    func do_returnAdd3(first: Int, second: Int, closure: (Int,Int) -> ())
    ->String
    {
        closure(first,second)
        return "OK"
    }

//    let addValue3 = do_returnAdd3(first: 4, second: 5, closure: { a,b in
//        print("addValue3------")
//        print(String(a))
//        print(String(b))
//        (a + b)
//    })
//
//    //print(addValue3)
//
//
//    let addValue33 = do_returnAdd3(first: 4, second: 5) { a,b in
//        print("addValue33------")
//        print(String(a))
//        print(String(b))
//        (a + b)
//    }
//    print(addValue33)




    func do_returnAdd_No(first: Int, second: Int, closure: (Int,Int) -> String)
    {
        closure(first,second)
    }

//    let addValue2 = do_returnAdd_No(first: 4, second: 5, closure: { a,b in
//        print("addValue2------")
//        print(String(a))
//        print(String(b))
//        return String( a + b )
//    })
    Swift.print("addValue 2-1 -----")
   // addValue2





    /////---------------
    func doSome() -> ()->() {
        return { ()-> () in
            Swift.print("hello")
        }
    }
   // doSome()()

    let aa = doSome()
    //aa()

}

let aaa: AAA  =  AAA()
aaa.condition( first: {
    4 > 2
})
aaa.closure1()

*/
