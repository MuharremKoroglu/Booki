//
//  DetailsView.swift
//  Booki
//
//  Created by Muharrem Köroğlu on 27.12.2022.
//

import SwiftUI

struct DetailsView: View {
    var chosenBook : BookDetail
    
    var body: some View {
        VStack{
            Image(chosenBook.bookImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.5)
            Text(chosenBook.bookTitle)
                .font(.largeTitle)
                .bold()
                .padding()
            Text(chosenBook.bookAuthor)
                .italic()
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenBook: history1)
    }
}
