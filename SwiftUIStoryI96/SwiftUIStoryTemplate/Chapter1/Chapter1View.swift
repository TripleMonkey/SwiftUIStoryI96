import SwiftUI

struct Chapter1View: View {
    @StateObject var VM = ViewModel.instance
    var body: some View {
        
        ZStack {
            Image("bg1")
                .resizable()
            //.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //   .offset(x: -2)
            // Add title and Story to ChapterTextBox view
            ChapterTextBox(title: "The Brave Little Sea Creature", story: chapterOne())
        }
        
    }
        //Text("Chapter 1")
        func chapterOne() -> String {
            
            
            //variable, character name
            var characterName = getCharacterName()
            let seaCreatures = ["Seahorse", "Jellyfish", "Dolphin"]
            //array, list of sea creatures
            let storyTitle = "The Brave Little Sea Creature"
            let randomSeaCreature = seaCreatures.randomElement()!
            let randomJewel: Jewelry = .allCases.randomElement()!
            //constants
            
            print(storyTitle)
            print("----------")
            
            return storyBeginning(name: characterName, seaCreatures: randomSeaCreature) +
            storyMiddle(name: characterName, seaCreatures: randomSeaCreature, jewel: randomJewel) +
            storyEnding(name: characterName, seaCreatures: randomSeaCreature)
            
            
            //enum, list of type of jewelry
            enum Jewelry: CaseIterable {
                case pearl
                case jewels
                case gold
            }
            
            //optional for character name
            func getCharacterName() -> String {
                print("What do you want to name your character?")
                let characterName = readLine()?.capitalized
                
                guard let characterName else {
                    return "Sunny"
                }
                if characterName.isEmpty {
                    return "Sunny"
                }
                //conditional
                return characterName
            }
            
            //function
            func storyBeginning(name: String, seaCreatures: String) -> String {
                return ("In the heart of the big, blue ocean, there lived a young and adventurous \(seaCreatures) named \(name).\(name) wasn't like the other \(seaCreatures) in there neighborhood \(name) had a curious spirit and a heart full of bravery. While \(name)'s friends were content with the familiar, \(name) longed for adventure. One sunny morning,\(name) woke up with an idea that gave them a burst of excitement. \(name) wanted to explore the mysterious underwater caves that the older \(seaCreatures) had always warned \(name) about. Undeterred, \(name) decided to embark on a daring adventure and swam away from the safety of  coral reef home, ready to discover the secrets of the caves. As \(name) entered the dark and shadowy cave,\(name) felt a mixture of excitement and fear. The cave's entrance was easy to navigate, but the deeper \(name) went, the darker and more treacherous it became and \(name) considered turning back. But then \(name) remembered there dream of adventure and pressed on.")
            }
            
            func storyMiddle(name: String, seaCreatures: String, jewel: Jewelry) -> String{
                return "In the cave's depths, \(name) encountered mysterious sea creatures, like bioluminescent fish and glowing algae. \(name) marveled at their beauty and wondered if the older \(seaCreatures) were missing out on something truly amazing. Just when \(name) thought they couldn't go any further, \(name) saw a faint light in the distance. It was coming from a hidden chamber, filled with magnificent treasure. But the real treasure was not gold or diamonds instead it was a huge, ancient \(jewel) that glowed with an ethereal light. As \(name) approached the \(jewel), a powerful current surged through the cave, trapping \(name). Panic welled up inside, but \(name) remembered there bravery. With all there might, \(name) pushed against the current and swam towards the light. With one final effort, \(name) grabbed the pearl and managed to escape the cave's powerful grip. Back in the safety of \(name)'s coral reef home, \(name) proudly shared his adventure with there friends. They were astounded by \(name) courage and the incredible tale of \(name)'s underwater adventure."
            }
            
            func storyEnding(name: String, seaCreatures: String) -> String {
                return "The older \(seaCreatures), who had once discouraged \(name), now looked at \(name) with newfound respect. They realized that sometimes, it takes a brave and adventurous spirit to reveal the wonders that lay beyond the familiar. \(name)'s adventure inspired others to embrace curiosity and the spirit of exploration. From that day on, \(name) became known as The Brave Little \(seaCreatures) and \(name)'s story was told to all the young \(seaCreatures), encouraging them to embrace their dreams and venture out into the great unknown."
                
            }
        }
}

#Preview {
    Chapter1View()
}
