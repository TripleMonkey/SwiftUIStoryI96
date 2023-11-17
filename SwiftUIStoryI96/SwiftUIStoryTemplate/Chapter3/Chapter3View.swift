import SwiftUI

struct Chapter3View: View {
    var body: some View {
    
         NavigationView {
                            ScrollView {
                                VStack(spacing: 20) {
                                    ForEach(1...8, id: \.self) { pageNumber in
                                        NavigationLink(destination: ComicPageView(pageNumber: pageNumber)) {
                                            Text("Page \(pageNumber)")
                                                .font(.title)
                                                .foregroundColor(.black)
                                                .frame(maxWidth: .infinity)
                                                .padding()
                                                .background(Color.blue)
                                                .cornerRadius(10)
                                                .opacity(0.6)
                                        }
                                    }
                                }
                                .padding()
                            }
                            .navigationTitle("Fin's Adventures")
                        }
                    }
                }


struct ComicPageView: View {
    var pageNumber: Int
    
    var body: some View {
        VStack {
            Text("Page \(pageNumber)")
                .font(.largeTitle)
                .padding()
//                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            
            
            if pageNumber % 2 == 0 {
                Text("In the depths of the ocean, a spirited dolphin named Fin embarked on a remarkable journey when he was only 9 years old. ") } else {
                Image("sharkfin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                    Spacer()
                   
//                    Text("Page \(pageNumber)")
//                        .font(.largeTitle)
//                        .padding()
//                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)

                // For example, you can display an image for the page
                Image("comic_page_\(pageNumber)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
        }
    }
}




#Preview {
    Chapter3View()
}
