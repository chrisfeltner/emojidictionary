//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by Christopher Feltner on 2/25/17.
//  Copyright © 2017 Christopher Feltner. All rights reserved.
//

class Emoji
{
    var emoji = ""
    var definition = ""
    var category = ""
    var year = 0
    
    init(emoji:String, definition: String, category:String, year:Int)
    {
        self.emoji = emoji
        self.definition = definition
        self.category = category
        self.year = year
    }
    
}
