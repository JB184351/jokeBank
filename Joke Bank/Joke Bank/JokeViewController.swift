//
//  JokeViewController.swift
//  Joke Bank
//
//  Created by Justin Bengtson on 1/1/19.
//  Copyright © 2019 Justin Bengtson. All rights reserved.
//

import UIKit

class JokeViewController: UIViewController {
    
    var joke = ""

    @IBOutlet var displayJoke: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = joke
        
        if joke == "Chicken"  {
            displayJoke.text = "Question: Why did the Chicken cross the road?\n\n Answer: To get to the other side\n"
        }
        
        if joke == "Walk into the bar..." {
            displayJoke.text = "and saw a Jewish mom talking to a soccer mom about life after death"
        }
        
        if joke == "Olive" {
            displayJoke.text = "Don't know anyone Olive Jokes lol"
        }
        
        if joke == "Racer" {
            displayJoke.text = "What did one racer say to other?\n Other Racer: I don't know what?\n A: Race ya!\n"
        }
        
        if joke == "Knock Knock" {
            displayJoke.text = "Knocker: Knock knock\n Answerer: Who's there?\n Knocker: Boo\n Answerer: Boo who?\n Knocker: Boo who, why are you crying\n"
        }
        
        if joke == "Programmers" {
            displayJoke.text = "Documentation is like sex.\nWhen it's good, it's very good.\nWhen it's bad, it's better than nothing.\n"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
