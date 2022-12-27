//
//  ContentView.swift
//  Booki
//
//  Created by Muharrem Köroğlu on 27.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List {
                ForEach (books) { book in
                    Section {
                        ForEach (book.bookDetail) { detail in
                            NavigationLink {
                                DetailsView(chosenBook: detail)
                            } label: {
                                Text(detail.bookTitle)
                            }
                        }
                    } header: {
                        Text(book.bookName)
                    }
                }
            }.navigationTitle(Text("Booki"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
