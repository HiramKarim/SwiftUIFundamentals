//
//  ContentVM.swift
//  swiftuiFundamentals
//
//  Created by Hiram Castro on 17/03/21.
//

import SwiftUI

class ContentVM: ObservableObject {
    
    @Published var names = ["Bob", "Susan"]
    
    var name: String = ""
    
    func save() {
        names.append(name)
    }
    
}
