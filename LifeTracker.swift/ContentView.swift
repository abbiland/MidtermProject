//
//  ContentView.swift
//  LifeTracker.swift
//
//  Created by Brayden James on 3/15/22.
//

import SwiftUI
import Combine

struct ContentView: View {
    @State private var selectedTab = 9
    var body: some View {
        TabView(selection: $selectedTab) {
            WelcomeView(selectedTab: $selectedTab)
                .tag(9)
            /*ForEach(0 ..< Tasks.toDoItem.count) {
                index in
                ListView(selectedTab: $selectedTab, index: index)
                    .tag(index) //3
            } */
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
