//
//  WelcomeView.swift
//  LifeTracker.swift
//
//  Created by Brayden James on 3/19/22.
//

import SwiftUI
import AVKit

struct ImageOverlay: View {
    var body: some View {
        ZStack {
            Text("LifeTracker")
                .padding()
                .font(.system(.largeTitle, design: .rounded))
                .foregroundColor(.green)
                .multilineTextAlignment(.center)
            Image("Logo")
                .padding()
                .offset(y: 60)
        }
    }
}

struct WelcomeView: View {
    @Binding var selectedTab: Int
    @State private var showList = false
    var body: some View {
        ZStack{
            VStack {
            GeometryReader { geo in
                Image("template")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width, height: geo.size.height)
                    .overlay(ImageOverlay())
            }
                
        }
            VStack {
                Spacer()
                Button("View Task List") {
                    showList.toggle()
                }
                .sheet(isPresented: $showList) {
                    ListView() // showHistory: $showHistory
                }
                .padding(.bottom)
                .foregroundColor(Color.green)
                .font(.system(.title))
                .multilineTextAlignment(.center)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(selectedTab: .constant(9))
    }
}
