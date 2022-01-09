//
//  ContentView.swift
//  SumUp
//
//  Created by Maximilian Schröder on 09.01.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            NavigationView {
                
                List {
                    NavigationLink("To-Do", destination: ToDoView())
                    NavigationLink("Erinnerungen", destination: ToDoView())
                    NavigationLink("Trainingsplan", destination: ToDoView())
                    NavigationLink("Haushalt", destination: ToDoView())
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("Start")
                
                
                
            }
            .tabItem{
                Image(systemName: "1.square.fill")
                Text("Start")
                
            }
            Text("Kommt noch")
                .tabItem{
                    Image(systemName: "1.square.fill")
                    Text("Einstellungen")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
