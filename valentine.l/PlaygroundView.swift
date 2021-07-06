//
//  PlaygroundView.swift
//  valentine.l
//
//  Created by jpo on 06/07/2021.
//

import SwiftUI

struct PlaygroundView: View {
    @State var name = ""
    @State var cheese = false
    
    var body: some View {
        VStack {
            Text("Hello \(name)")
            
            TextField("Entrez votre nom", text: $name)
            Toggle(isOn: $cheese, label: {
                Text("Avec fromage")
            })
        }
    }
}

struct PlaygroundView_Previews: PreviewProvider {
    static var previews: some View {
        PlaygroundView()
    }
}
