//
//  SingleExerciseView.swift
//  SumUp
//
//  Created by Maximilian Schröder on 09.01.22.
//

import SwiftUI

struct SingleExerciseView: View {
    var exercise: TrainingExerciseModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(exercise.name)
                .font(.headline)
                .foregroundColor(.primary)
            HStack {
                Text(exercise.firstSet)
                    .font(.body)
                    .foregroundColor(.secondary)
                Text(exercise.secondSet)
                    .font(.body)
                    .foregroundColor(.secondary)
                Text(exercise.thirdSet)
                    .font(.body)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct SingleExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SingleExerciseView(exercise: TrainingExerciseModel.exercise1)
                .previewLayout(.sizeThatFits)
            SingleExerciseView(exercise: TrainingExerciseModel.exercise1)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
                
        }
    }
}
