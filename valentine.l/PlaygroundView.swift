//
//  PlaygroundView.swift
//  valentine.l
//
//  Created by jpo on 06/07/2021.
//

import SwiftUI

struct PlaygroundView: View {
    let students = [ "Tartaglia", "Scaramuccia", "Pucinella", "Signora"]
    
    var body: some View {
        List {
            ForEach(students, id: \.self) { student
                in
                Text(student)
            }
        }
    }
}

struct PlaygroundView_Previews: PreviewProvider {
    static var previews: some View {
        PlaygroundView()
    }
}
