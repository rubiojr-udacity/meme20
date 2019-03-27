//
//  MemeStore.swift
//  Meme10
//
//  Created by Sergio Rubio on 27/03/2019.
//  Copyright © 2019 Sergio Rubio. All rights reserved.
//

import Foundation

class MemeStore {
    
    static let shared = MemeStore()
    var memes:[Meme]
    
    init(){
        memes = [Meme]()
    }
}
