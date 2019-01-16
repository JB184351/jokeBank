//
//  JokeViewController.swift
//  Joke Bank
//
//  Created by Justin Bengtson on 1/1/19.
//  Copyright © 2019 Justin Bengtson. All rights reserved.
//

import UIKit

class JokeViewController: UIViewController {
    
    var joke = Joke()

    @IBOutlet var displayJoke: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        title = joke.jokeName
        
        displayJoke.text = joke.theJokeDefinition
    }
}
