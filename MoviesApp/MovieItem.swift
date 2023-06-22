//
//  MovieItem.swift
//  MoviesApp
//
//  Created by Enes Saglam on 22.06.2023.
//

import SwiftUI

struct MovieItem: View {
    var movie = Movies()
    var width = 0.0
    var height = 0.0
    var body: some View {
        VStack(spacing: 5){
            Image(movie.moviePic!).resizable().frame(width: width, height: height)
            Text(movie.movieName!).foregroundColor(.red)
            Text("Watch Later")
                .padding(5)
                .foregroundColor(.white)
                .background(.indigo)
                .cornerRadius(5)
                .padding(.bottom,5)
                .onTapGesture {
                    print("\(movie.movieName!) has been added")
                }
            
        }.background(Rectangle().fill(.black).shadow(radius: 2))
    }
}

/*struct MovieItem_Previews: PreviewProvider {
    static var previews: some View {
        MovieItem()
    }
}

*/
