//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Christopher Feltner on 2/25/17.
//  Copyright © 2017 Christopher Feltner. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mainView: UITableView!
    var emoji : [Emoji] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mainView.dataSource = self
        mainView.delegate = self
        emoji = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoji.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emoji[indexPath.row].emoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myEmoji = emoji[indexPath.row]
        performSegue(withIdentifier: "emojiSegue", sender: myEmoji)
 
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DefVC = segue.destination as! DefinitionViewController
        
        DefVC.emoji = sender as! Emoji
    }
    
    func makeEmojiArray() -> [Emoji]
    {
        var emoji1 = Emoji(emoji: "😏", definition: "Sideeye", category: "Smiley", year: 2007)
        var emoji2 = Emoji(emoji: "💡", definition: "Lightbulb", category: "Object", year: 2009)
        var emoji3 = Emoji(emoji: "🔥", definition: "Fire", category: "Object", year: 2010)
        var emoji4 = Emoji(emoji: "✅", definition: "Green Check", category: "Symbol", year: 2007)
        var emoji5 = Emoji(emoji: "😒", definition: "Unamused", category: "Smiley", year: 2009)
        var emoji6 = Emoji(emoji: "👨‍✈️", definition: "Pilot", category: "Smiley", year: 2011)
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

