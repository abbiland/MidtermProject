//
//  ListView.swift
//  LifeTracker.swift
//
//  Created by Brayden James on 3/15/22.
//

import SwiftUI
import Combine

struct ListView: View {
    @ObservedObject var taskStore = TaskStore()
    @State var newTask : String = ""
    
    var addTask : some View {
        HStack {
            TextField("New Task: ", text: self.$newTask)
            Button(action: self.addNewTask, label: {
                Text("Add Task")
                    .foregroundColor(Color.green)
            })
        }
    }
    
    func addNewTask() {
        taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toDoItem: newTask))
        self.newTask = ""
    }
    
    var body: some View {
          VStack {
              Text("To-Do List")
                  .padding()
                  .font(.system(.largeTitle, design: .rounded))
                  .foregroundColor(.green)
                  
              addTask.padding()
                  List {
                      ForEach(self.taskStore.tasks) { task in
                      Text(task.toDoItem)
                      } .onDelete(perform: self.delete)
                  } .navigationBarItems(trailing: EditButton())
          }
      }
      func delete(at offsets : IndexSet) {
          taskStore.tasks.remove(atOffsets: offsets)
      }
  }

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
