import SwiftUI

struct TrainingLogView: View {
    var body: some View
    {
        
        let exercises: [TrainingExerciseModel] = dummyTrainingsExerciseModel
        
        NavigationView {
            List {
                ForEach(exercises) {
                    exercise in
                    
                    NavigationLink(destination: Text("Nächste Seite")) {
                        SingleExerciseView(exercise: exercise)
                    }
                }
            }
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("Übungen")
    }
}

struct TrainingLogView_Previews: PreviewProvider {
    static var previews: some View {
        TrainingLogView()
    }
}


struct TrainingExerciseModel: Identifiable {
    var id = UUID()
    
    var name: String
    var firstSet: String
    var secondSet: String
    var thirdSet: String
}

extension TrainingExerciseModel {
    
    static var exercise1 = TrainingExerciseModel(
        name: "ButterFly",
        firstSet: "30",
        secondSet: "30",
        thirdSet: "30")
    
    static var exercise2 = TrainingExerciseModel(
        name: "Bankdrücken",
        firstSet: "30",
        secondSet: "30",
        thirdSet: "30")
    
    static var exercise3 = TrainingExerciseModel(
        name: "Dips",
        firstSet: "30",
        secondSet: "30",
        thirdSet: "30")
}

let dummyTrainingsExerciseModel = [TrainingExerciseModel.exercise1,
                                   TrainingExerciseModel.exercise2,
                                   TrainingExerciseModel.exercise3]
