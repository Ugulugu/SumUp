//
//  ExerciseView.swift
//  SumUp
//
//  Created by Maximilian Schröder on 10.01.22.
//

import SwiftUI

struct ExerciseView: View {
    
    var exercise: TrainingExerciseModel
    
    var body: some View {
        
        List {
            Text("1.Satz: " + exercise.firstSet)
            Text("2.Satz: " + exercise.secondSet)
            Text("3.Satz: " + exercise.thirdSet)
        }
        .navigationTitle(exercise.name)
    }
}


struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        
        let ex = TrainingExerciseModel(name: "TestName", firstSet: "Test1", secondSet: "Test2", thirdSet: "Test3", test: 12.5)
        
        ExerciseView(exercise: ex)
    }
}
