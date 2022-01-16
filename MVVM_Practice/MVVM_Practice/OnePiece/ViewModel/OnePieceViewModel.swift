//
//  OnePieceViewModel.swift
//  MVVM_Practice
//
//  Created by mobile on 2022/01/12.
//

import Foundation

class OnePieceViewModel {
    
    let character: Character
    
    init(){
        character = Character.init(name: "루피", reward: "$400,000,000", image: .luffy)
    }
}
