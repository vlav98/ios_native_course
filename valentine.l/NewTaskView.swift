//
//  NewTaskView.swift
//  valentine.l
//
//  Created by jpo on 07/07/2021.
//

import SwiftUI

struct NewTaskView: View {
    
    @Binding var items: [String]
    @State private var newTaskName = ""
    
    var body: some View {
        VStack {
            TextField("Entrez une nouvelle tâche", text: $newTaskName).textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                items.append(newTaskName)
            }, label: {
                Text("Valider")
            })
        }.padding()
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(
            items: .constant([])
        )
    }
}
