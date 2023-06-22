//
//  Kategoriler.swift
//  MoviesApp
//
//  Created by Enes Saglam on 22.06.2023.
//

import Foundation

class Kategoriler : Identifiable {
    
    var kategoriName:String?
    var kategoriId:Int?
    
    init(){
        
    }
    init(kategoriName: String , kategoriId: Int) {
        self.kategoriName = kategoriName
        self.kategoriId = kategoriId
    }
    
}
