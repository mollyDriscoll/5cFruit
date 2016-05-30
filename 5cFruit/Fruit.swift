//
//  Fruit.swift
//  5cFruit
//
//  Created by Molly Driscoll on 5/17/16.
//  Copyright © 2016 mdriscoll. All rights reserved.
//

import Foundation
import UIKit

class Fruit{
    var name : String
    var seasons : [Int];
    var needsHighlighting = false
    var index : Int
    var color : UIColor
    
    
    init(name: String, seasons : [Int],index : Int, color : UIColor){
        self.name = name
        self.seasons = seasons
        self.index = index
        self.color = color
    }
    
}
