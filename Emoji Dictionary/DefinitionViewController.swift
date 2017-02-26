//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Christopher Feltner on 2/25/17.
//  Copyright © 2017 Christopher Feltner. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji : Emoji = Emoji(emoji: "", definition: "", category: "", year: 0)
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji.emoji
        categoryLabel.text = emoji.category
        definitionLabel.text = emoji.definition
        yearLabel.text = String(emoji.year)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
