//
//  Tasks.swift
//  LifeTracker.swift
//
//  Created by Brayden James on 3/19/22.
//

import Foundation
import SwiftUI
import Combine

struct Task : Identifiable {
    var id = String()
    var toDoItem = String()

}

class TaskStore : ObservableObject {
    @Published var tasks = [Task]()
}
