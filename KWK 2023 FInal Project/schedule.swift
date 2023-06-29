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
        VStack(alignment: .leading) {
            Text("Schedule")
                .font(.largeTitle)
                .fontWeight(.bold)
            //Add your page content here!!!
            VStack {
                MultiDatePicker(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/, selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Binding<Set<DateComponents>>@*/.constant([])/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal)
                    .background(Color.white)
                    .compositingGroup()
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                
                Spacer()
                Spacer()
                
                HStack {
                    Text("Upcoming Events")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.vertical)
                    Spacer()
                    Button(action: {
                        self.showNewTask = true
                    }) {
                    Text("+")
                            .font(.title)
                            .padding(.vertical, -4.0)
                            
                    }
                    .padding(.trailing)
                    .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.roundedRectangle/*@END_MENU_TOKEN@*/)
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
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
                NavigationStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 170.0, height: 40.0)
                            .foregroundColor(Color.black)
                        NavigationLink(destination: attendance()) {
                            Text("View Attendance")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                    }

                }
            }
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(.horizontal)
        .padding(.vertical)
        .scrollIndicators(.hidden)
        if showNewTask {
            NewToDoView(title: "", showNewTask: $showNewTask)
                //Delete the toDoItems: $toDoItems binding
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


