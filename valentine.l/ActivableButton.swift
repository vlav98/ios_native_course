//
//  ActivableButton.swift
//  valentine.l
//
//  Created by jpo on 06/07/2021.
//

import SwiftUI

struct ActivableButton: View {
    
    let iconName: String
    let isOnColor: Color
    @Binding var isOn: Bool
    let onTapAction: () -> Void
    
    var body: some View {
        Button(action: {
            isOn.toggle()
            onTapAction()
        }, label: {
            Image(systemName: isOn ? "\(iconName).fill" : "\(iconName)")
                .imageScale(.large)
                .foregroundColor(isOn ? isOnColor : Color.primary)
        })
    }
}

struct ActivableButton_Previews: PreviewProvider {
    static func displayMessage() {
        print("Bouton pressé")
    }
    
    static var previews: some View {
        ActivableButton(
            iconName: "heart",
            isOnColor: .red,
            isOn: .constant(false),
            onTapAction: displayMessage
        )
    }
}
