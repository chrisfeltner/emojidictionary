//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Christopher Feltner on 2/25/17.
//  Copyright © 2017 Christopher Feltner. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "no emoji"
    @IBOutlet weak var emojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
