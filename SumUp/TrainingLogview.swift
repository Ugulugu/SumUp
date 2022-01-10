import SwiftUI

struct TrainingLogView: View {
    
    @State var exercises: [TrainingExerciseModel] = dummyTrainingsExerciseModel
    
    @State var showAddSheet = false
    
    var body: some View
    {
        List {
            ForEach(exercises) {
                exercise in
                
                NavigationLink(destination: ExerciseView(exercise: exercise)) {
                    SingleExerciseView(exercise: exercise)
                }
            }
        }
        .navigationTitle("Übungen")
        .listStyle(GroupedListStyle())
        .navigationBarItems(trailing:
                                Button(action:  {},
                                       label: {
            Image(systemName: "plus.circle.fill")
            Text("Add")
        }
                                      ))
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
    var test: Float
}

extension TrainingExerciseModel {
    
    static var exercise1 = TrainingExerciseModel(
        name: "ButterFly",
        firstSet: "30",
        secondSet: "30",
        thirdSet: "30",
        test: 7.5)
    
    static var exercise2 = TrainingExerciseModel(
        name: "Bankdrücken",
        firstSet: "30",
        secondSet: "30",
        thirdSet: "30",
        test: 7.5)
    
    static var exercise3 = TrainingExerciseModel(
        name: "Dips",
        firstSet: "30",
        secondSet: "30",
        thirdSet: "30",
        test: 7.5)
    
    static var dummyExercise = TrainingExerciseModel(
        name: "Dummy",
        firstSet: "Satz1",
        secondSet: "Satz2",
        thirdSet: "Satz3",
        test: 0.0)
}

let dummyTrainingsExerciseModel = [TrainingExerciseModel.exercise1,
                                   TrainingExerciseModel.exercise2,
                                   TrainingExerciseModel.exercise3]
