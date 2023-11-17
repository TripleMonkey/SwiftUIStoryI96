import SwiftUI

struct Chapter3View: View {
    var body: some View {
    
         NavigationView {
                            ScrollView {
                                VStack(spacing: 20) {
                                    ForEach(1...10, id: \.self) { pageNumber in
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
            Text("")
            
            if pageNumber % 2 == 0 {
                Text("Even page content")
                    .font(.headline)
            } else {
                Image("sharkfin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                
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
