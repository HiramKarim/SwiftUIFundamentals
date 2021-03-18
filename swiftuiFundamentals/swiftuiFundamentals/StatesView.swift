//
//  StatesView.swift
//  swiftuiFundamentals
//
//  Created by Hiram Castro on 17/03/21.
//

import SwiftUI

struct StatesView: View {
    
    @ObservedObject var contentVM = ContentVM()
    @State var showForm = false
    
    var body: some View {
        VStack {
            List(contentVM.names, id: \.self) {
                name in Text(name)
            }
            .padding(.top, 60)
            .frame(height: 400)
            
            Button(action: {
                contentVM.name = ""
                self.showForm = true
            }, label: {
                Text("Add Name")
            })
        }
        .sheet(isPresented: $showForm, content: {
            AddNameView(contentVM: contentVM, showForm: $showForm)
        })
    }
}

struct StatesView_Previews: PreviewProvider {
    static var previews: some View {
        StatesView()
    }
}
