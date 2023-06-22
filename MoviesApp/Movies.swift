//
//  Movies.swift
//  MoviesApp
//
//  Created by Enes Saglam on 22.06.2023.
//

import Foundation


class Movies : Identifiable {
   
    
    var movieId:Int?
    var movieName:String?
    var movieYear:Int?
    var moviePic:String?
    var kategori:Kategoriler?
    var director:Directors?
    
    init(){
        
    }
    
    init(movieId: Int, movieName: String, movieYear: Int, moviePic: String, kategori: Kategoriler, director: Directors) {
        self.movieId = movieId
        self.movieName = movieName
        self.movieYear = movieYear
        self.moviePic = moviePic
        self.kategori = kategori
        self.director = director
    }
    
}
