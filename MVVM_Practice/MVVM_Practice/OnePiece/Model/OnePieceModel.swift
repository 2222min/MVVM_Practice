//
//  OnePieceModel.swift
//  MVVM_Practice
//
//  Created by mobile on 2022/01/12.
//

import Foundation
import UIKit

struct Character {
    
    let name: String?
    let reward: String?
    let image: UIImage?
    
    init(name: String?,
         reward: String?,
         image: UIImage?
    ){
        self.name = name
        self.reward = reward
        self.image = image
    }
}
