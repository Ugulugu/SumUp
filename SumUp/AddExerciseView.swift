//
//  AddExerciseView.swift
//  SumUp
//
//  Created by Maximilian Schröder on 10.01.22.
//

import SwiftUI

struct AddExerciseView: View {
    
    @State var exercises: [TrainingExerciseModel] = dummyTrainingsExerciseModel
    @State var name: String = ""
    
    @State var ex = TrainingExerciseModel(name: "Eddy", firstSet: "", secondSet: "", thirdSet: "", test: 0)
    
    
    var body: some View {
        
        Form {
            TextField(text: $name, prompt: Text("Name der Übung")) {
                Text("Username")}
            TextField(text: $name, prompt: Text("Name der Übung")) {
                Text("Username")
            }
            Button(action: {exercises.append(ex)}) {
                Label("Add exercise", systemImage: "folder.badge.plus")
            .navigationTitle("Übung hinzufügen")
        }
    }
    }
}

struct AddExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        AddExerciseView()
    }
}
