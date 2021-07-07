//
//  MyCustomTabBar.swift
//  valentine.l
//
//  Created by jpo on 07/07/2021.
//

import SwiftUI

struct MyCustomTabBar: View {
    var body: some View {
        TabView{
            Text("Page 1")
                .tabItem { Text("text") }
            Text("Page 2")
                .tabItem { Text("p2") }
            Text("Page 3")
            ContentView()
        }
    }
}

struct MyCustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomTabBar()
    }
}
