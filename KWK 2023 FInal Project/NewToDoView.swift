//
//  NewToDoView.swift
//  KWK 2023 FInal Project
//
//  Created by Nicole Lee on 6/28/23.
//


import SwiftUI

struct NewToDoView: View {
    
    @Environment(\.managedObjectContext) var context

    @State var title: String

    @Binding var showNewTask : Bool

    var body: some View {
        VStack {
            
            Text("Event Title:")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter an event...", text: $title).padding()
                .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .padding()
            Text("Which day?")
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })

            .padding()
            
            Button(action: {
                self.showNewTask = false
                self.addTask(title: self.title)
            }) {
                Text("Add")
            }
            .padding()
        }
    }
    
    private func addTask(title: String, isImportant: Bool = false) {
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
                
        do {
                    try context.save()
        } catch {
                    print(error)
        }

        }
    
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", showNewTask: .constant(true)
                    //Delete toDoItems: .constant([])
        )
    }
}
