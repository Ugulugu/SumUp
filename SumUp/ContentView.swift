//
//  ContentView.swift
//  SumUp
//
//  Created by Maximilian Schröder on 09.01.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            List {
                NavigationLink("Trainingstagebuch", destination: TrainingLogView())
                NavigationLink("Go to TestView", destination: TestView())
                //NavigationLink("Erinnerungen", destination: ToDoView())
                //NavigationLink("Haushalt", destination: ToDoView())
                    .navigationTitle("Start")

            }
            .listStyle(GroupedListStyle())            
            
            
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
