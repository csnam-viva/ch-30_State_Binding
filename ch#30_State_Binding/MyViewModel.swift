//
//  MyViewModel.swift
//  ch#30_State_Binding
//
//  Created by 비바 on 2023/01/12.
//

import Foundation
import Combine

class MyViewModel: ObservableObject{
    @Published var myTitle: String = "CSNAM2 일상"
}
