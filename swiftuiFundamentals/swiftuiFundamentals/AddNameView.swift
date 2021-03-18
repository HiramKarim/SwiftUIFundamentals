//
//  AddNameView.swift
//  swiftuiFundamentals
//
//  Created by Hiram Castro on 17/03/21.
//

import SwiftUI

struct AddNameView: View {
    
    @ObservedObject var contentVM = ContentVM()
    @Binding var showForm:Bool
    
    var body: some View {
        TextField("Enter new name",
                  text: $contentVM.name,
                  onEditingChanged: { _ in },
                  onCommit:{
            contentVM.save()
            self.showForm = false
        })
    }
}

struct AddNameView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        
        AddNameView(contentVM: ContentVM(), showForm: .constant(true))
    }
}
