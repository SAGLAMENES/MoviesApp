//
//  MovieDetails.swift
//  MoviesApp
//
//  Created by Enes Saglam on 22.06.2023.
//

import SwiftUI

struct MovieDetails: View {
    var movie = Movies()
    var body: some View {
        VStack(spacing: 50){
            Image(movie.moviePic!)
            Text((movie.movieName!)).foregroundColor(.indigo)
            Text("dir: \(movie.director!.directorName!)")
            Text(String(movie.movieYear!)).font(.system(size: 50))
        }.navigationTitle(movie.movieName!)
    }
}

/*struct MovieDetails_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetails()
    }
}*/
