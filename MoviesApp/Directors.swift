//
//  Directors.swift
//  MoviesApp
//
//  Created by Enes Saglam on 22.06.2023.
//

import Foundation


class Directors : Identifiable{
    var directorName:String?
    var directorINt:Int?
    
    init() {
        
    }
    
    init(directorName: String? = nil, directorINt: Int? = nil) {
        self.directorName = directorName
        self.directorINt = directorINt
    }
}
