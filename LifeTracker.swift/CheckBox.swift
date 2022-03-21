//
//  CheckBox.swift
//  LifeTracker.swift
//
//  Created by Brayden James on 3/20/22.
//

import Foundation
import SwiftUI
import Combine

struct CheckBox: View {
    var body: some View {
        VStack {
            
        }
    }
}

struct CheckBox_Previews: PreviewProvider {
    static var previews: some View {
        CheckBox()
    }
}

/*
 struct Task : Identifiable {
     var id = String()
     var toDoItem = String()
     var complete: Bool = false
 }

 class TaskStore : ObservableObject {
     @Published var tasks = [Task]()
 }*/

/*     @Binding var rating: Int // 1
 let maximumRating = 5 // 2
 
 let onColor = Color.red // 3
 let offColor = Color.gray
 
 var body: some View {
     HStack {
         ForEach(1 ..< maximumRating + 1) { index in
             Image(systemName: "waveform.path.ecg")
                 .foregroundColor(
                     index > rating ? offColor : onColor) // 4
                 .onTapGesture { //5
                     rating = index
                 }
         }
     }
     .font(.largeTitle)
 }
}*/

/*
General logic:
 int status = 0;
 // status of 0 == unfilled
 // status of 1 == filled
 if(0 && clicked) {
    Image("Filled")
    status = 1
 }
 else if(1 && clicked) {
    Image("Unfilled")
    status = 0
 }
 */
