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
    @State var checked : Bool = false
    @State var boxState = Image("")
    
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
    
    func checkBox() {
        if checked == false {
            boxState = Image("Filled")
            checked = true
        }
        else {
            boxState = Image("Unfilled")
            checked = false
        }
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
                        HStack {
                            if checked {
                         Button(action: self.checkBox, label : {
                                Image("Unfilled")
                         })
                         } else {
                         Button(action: self.checkBox, label : {
                                Image("Filled")
                         })
                         }
                         Text(task.toDoItem)
                    }
                }
          }
    }
    }
    /*var body: some View {
          VStack {
              Text("To-Do List")
                  .padding()
                  .font(.system(.largeTitle, design: .rounded))
                  .foregroundColor(.green)
                
            addTask.padding()
                List {
                    ForEach(self.taskStore.tasks) { task in
                    Text(task.toDoItem)
                    }
                }
          }
    }*/
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

/* checked == false ? Image("Filled") : Image("Unfilled")*/
/* HStack {
    if task.checked {
 Button(action: self.checkBox, label : {
        Image("Unfilled")
 })
 } else {
 Button(action: self.checkBox, label : {
        Image("Filled")
 })
 }
 Spacer()
 Text(task.toDoItem)*/

/* Button(action: self.checkBox*/
