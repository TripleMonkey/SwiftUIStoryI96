import SwiftUI

struct Chapter2View: View {
    
    let chap = 2
    //MARK: properties
    @StateObject var VM = ViewModel.instance
    
    let indexOne = randomIndex(lessThan: Animal.allCases.count)
    let indexTwo = randomIndex(lessThan: Animal.allCases.count)
    
    // MARK:
    
    var body: some View {
        ZStack {
            Image("bg2")
                .resizable()
                .offset(x: -2)
            // Add title and Story to ChapterTextBox view
            ChapterTextBox(title: "What to Eat?", story: mainBranch(main: VM.main, second: VM.second))
        }
    }
    
    // MARK: Functions
    // Function for main story text
    func mainBranch(main: Character, second: Character) -> String {
        
        let convinced = convince()
        
        var main = "In the deep dark ocean lived a \(main.disposition) \(main.animal.rawValue) named \(main.name). \(main.name) the \(main.animal) was king of their corner of the sea. \(main.name) fed on all the little \(second.animal.rawValue) that came by. \n\nThen one day, a \(second.disposition) \(second.animal.rawValue) named \(second.name) swam into the \(main.disposition) \(main.animal.rawValue)'s home. As \(main.name) swam quickly near \(second.name) for a quick snack, \(second.name) the \(second.animal.rawValue) shouted \"Don't EAT ME!\" \n\nThis startled \(main.name) and they swam past \(second.name) and straight into an old sunken pirate ship. \"OUCH\", screamed \(main.name). \"You made me bump my nose!\" \n\n\"I'm sorry, but you did try to eat me.\" \n\n\"I'm a \(main.disposition) \(main.animal.rawValue). I eat \(second.disposition) \(second.animal.rawValue). It's what I do.\", explained \(main.name).\n\n\"Well, don't do it today please.\", \(second.name) pleaded. \n\n\(main.name) thought for a seond and said, \"If I don't eat \(second.animal.rawValue), how will I survive?\" \n\n\"Follow me. I'll show you.\", \(second.name) exclaimed with eagerness.\n"
        
        if convinced {
            main += branchOne(main: VM.main, second: VM.second, place: VM.foodPlaces[randomIndex(lessThan: VM.foodPlaces.count)])
            
        }else {
            main += branchTwo(main: VM.main, second: second)
        }
        return main
    }
    
    // Functions for selected branch text
    func branchOne(main: Character, second: Character, place: String) -> String {
        "\(main.name) was curious. So they followed \(second.name) to a nearby \(place). Ever since then, when \(main.name) is \(main.disposition), they go to the nearest \(place). \n\nMeanwhile, \(second.name) is busy showing other \(main.animal.rawValue) a new way to satisfy their \(main.disposition).\n"
    }
    func branchTwo(main: Character, second: Character) -> String {
        "\(main.name) was too \(main.disposition) to deal with little \(second.animal.rawValue) and their games. So \(main.name) the \(main.animal.rawValue) made another move to feast on \(second.name). Again, \(second.name) the \(second.animal.rawValue) was too fast and swam through the reef to freedom. \n\nToday, \(main.name) still dreams of the \(second.animal.rawValue) that got away.\n"
    }
    // Function to determine sbranch text
    func convince() -> Bool {
        let index = randomIndex(lessThan: 2)
        if index == 0 {
            return true
        } else {
            return false
        }
    }
}

#Preview {
    Chapter2View()
}
