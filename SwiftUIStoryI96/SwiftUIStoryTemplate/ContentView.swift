import SwiftUI

// Use the relevant folders and swift files to code your chapter of the story. Keep ContentView as-is, unless you want a different type of navigation in your story.
struct ContentView: View {
    var body: some View {
        TabView {
            Chapter1View()
                .tabItem {
                    Label("Chapter 1", systemImage: "1.circle")
                }
            Chapter2View()
                .tabItem {
                    Label("Chapter 2", systemImage: "2.circle")
                }
            Chapter3View()
                .tabItem {
                    Label("Chapter 3", systemImage: "3.circle")
                }
            Chapter4View()
                .tabItem {
                    Label("Chapter 4", systemImage: "4.circle")
                }
            Chapter5View()
                .tabItem {
                    Label("Chapter 5", systemImage: "5.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
