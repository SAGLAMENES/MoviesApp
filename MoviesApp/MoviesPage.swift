//
//  ContentView.swift
//  MoviesApp
//
//  Created by Enes Saglam on 22.06.2023.
//

import SwiftUI

struct MoviesPage: View {
    @State private var moviesList = [Movies]()
    var body: some View {
        NavigationStack{
            GeometryReader{ geometry in
                let screenWidth = geometry.size.width
                let screenHeight = geometry.size.height/2
                let itemWidth = (screenWidth-40)/2
                ScrollView{
                    LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())],spacing: 7){
                        ForEach(moviesList){movi in
                            NavigationLink(destination: MovieDetails(movie: movi)){
                                MovieItem(movie: movi, width: itemWidth, height: screenHeight)
                            }
                        }
                    }
                }.padding(10)
                    .navigationTitle("Movies")
                    .onAppear{
                        var list = [Movies]()
                        let k1 = Kategoriler(kategoriName: "Action", kategoriId: 1)
                        let k2 = Kategoriler(kategoriName: "Drama", kategoriId: 2)
                        let k3 = Kategoriler(kategoriName: "Science-Fiction", kategoriId: 3)
                        let d1 = Directors(directorName: "George Lucas", directorINt: 1)
                        let d2 = Directors(directorName: "David Fincher", directorINt: 2)
                        let d3 = Directors(directorName: "Park Chan-Wook", directorINt: 3)
                        let d4 = Directors(directorName: "Francis Ford Coppola", directorINt: 4)
                        let d5 = Directors(directorName: "Lana&Lily Wachowski", directorINt: 5)
                        let d6 = Directors(directorName: "Tarantino", directorINt: 6)
                        let m1 = Movies(movieId: 1, movieName: "Fight Clup", movieYear: 1999, moviePic: "fightclup", kategori: k1, director: d2)
                        let m2 = Movies(movieId: 2, movieName: "the Godfather", movieYear: 1974, moviePic: "godfather", kategori: k2, director: d4)
                        let m3 = Movies(movieId: 3, movieName: "Star Wars", movieYear: 1978, moviePic: "starwars", kategori: k3, director: d1)
                        let m4 = Movies(movieId: 4, movieName: "The Oldboy", movieYear: 2001, moviePic: "oldboy", kategori: k2, director: d3)
                        let m5 = Movies(movieId: 5, movieName: "Matrix", movieYear: 1999, moviePic: "matrix", kategori: k3, director: d5)
                        let m6 = Movies(movieId: 6, movieName: "Django", movieYear: 2009, moviePic: "django", kategori: k1, director: d6)
                        list.append(m1)
                        list.append(m2)

                        list.append(m3)

                        list.append(m4)

                        list.append(m5)

                        list.append(m6)
                        moviesList = list

                    }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            MoviesPage()
        }
    }
}
