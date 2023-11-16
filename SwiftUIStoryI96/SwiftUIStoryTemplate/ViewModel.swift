//
//  ViewModel.swift
//  SwiftUIStoryTemplate
//
//  Created by Nigel Krajewski on 11/15/23.
//

import Foundation
import SwiftUI

/*
 This View model can be used to provide random elements
 to your story without recreating variables in every chapter.
 
 Access it by declaring
    var VM = ViewModel.instance
 after
    struct ChapterXView: View {
 then referencing published properies in story.
 See Chapter2View for examples
 
 ALSO INCLUDED HERE:
 - enum for animal type
 - struct for character type
 */

class ViewModel: ObservableObject {
    // Published variables accessed and mutated in views
    @Published var storyBegan = false
    @Published var isConvinced: Bool = false
    
    // Variables, Constants, Arrays, Optionals (Strings and Int)
    @Published var dispositions: [String] = ["happy", "silly", "huge","hungry", "grumpy", "smart", "starving", "killer", "crabby", "spongy", "tiny", "hammerhead", "slimy", "beautiful", "friendly", "strong", "bully"]
    @Published var names: [String] = ["Fredy", "Sam", "Wilma", "Rocky", "Phil", "Doris", "Nigel", "Beverly", "Brea", "Maddie", "Sabrina", "Pete"]
    @Published var foodPlaces: [String] = ["Red Lobster", "Captn Fish", "Long John Silver"]
    
    @Published var main: Character = Character(animal: .penguin, name: "", disposition: "")
    @Published var second: Character = Character(animal: .penguin, name: "", disposition: "")
    
    static var instance = ViewModel()
    private init() {
        main = Character(animal: Animal.allCases[randomIndex(lessThan: Animal.allCases.count)], name: names[randomIndex(lessThan: names.count)], disposition: dispositions[randomIndex(lessThan: dispositions.count)])
        second = Character(animal: Animal.allCases[randomIndex(lessThan: Animal.allCases.count)], name: names[randomIndex(lessThan: names.count)], disposition: dispositions[randomIndex(lessThan: dispositions.count)])
    }
}

// MARK: Enumeration
enum Animal: String, CaseIterable {
    case shark, pufferFish, dolphin, walrus, penguin, whale, eel, starfish, camel, seahorse, salad, barnacle, bear
}

// MARK: Structure
struct Character {
    let animal: Animal
    let name: String
    let disposition: String
}
