//
//  schedule.swift
//  KWK 2023 FInal Project
//
//  Created by Nicole Lee on 6/28/23.
//

import SwiftUI

struct schedule: View {
    @Environment(\.managedObjectContext) var context
    
    @State private var showNewTask = false
    
    @FetchRequest(
        entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
    
    var toDoItems: FetchedResults<ToDo>
    var body: some View {
        //Page Heading
        NavigationStack {
                VStack(alignment: .leading) {
                    Text("Schedule")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding([.top, .leading])
                    
                    
                    //Add your page content here!!!
                    VStack {
                        HStack {
                            Text("Upcoming Events")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.vertical)
                            Spacer()
                            Button(action: {
                                self.showNewTask = true
                            }) {
                                Image(systemName: "plus")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .background(.black)
                                    .clipShape(Circle())
                                
                                
                            }
                            
                        }
                        .padding()
                        Spacer()
                        
                        List {
                            ForEach (toDoItems) { toDoItem in
                                if toDoItem.isImportant == true {
                                    Text("‼️" + (toDoItem.title ?? "No title"))
                                } else {Text(toDoItem.title ?? "No title")
                                }
                            }
                            .onDelete(perform: deleteTask)
                        }
                        .listStyle(.plain)
                        .animation(.easeOut, value: showNewTask)
                        ZStack(alignment: .topLeading){
                            if showNewTask {
                                NewToDoView(title: "", showNewTask: $showNewTask)
                                //Delete the toDoItems: $toDoItems binding
                            }
                        }
                        Spacer()
                        Spacer()
                        MultiDatePicker(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/, selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Binding<Set<DateComponents>>@*/.constant([])/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                            .background(Color.white)
                            .compositingGroup()
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        
                        Spacer()
                        
                        ZStack{
                            
                            NavigationLink(destination: attendance()) {
                                Text("View Attendance")
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.black.cornerRadius(10))
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .padding()
                                
                            }
                        }
                        
                    }
                    .padding()
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.horizontal)
                    .padding(.vertical)
                    .scrollIndicators(.hidden)
            }
        }
    }
    private func deleteTask(offsets: IndexSet) {
        withAnimation {
            offsets.map { toDoItems[$0] }.forEach(context.delete)
            
            do {
                try context.save()
            } catch {
                print(error)
            }
        }
    }
}

struct schedule_Previews: PreviewProvider {
    static var previews: some View {
        schedule()
    }
}


