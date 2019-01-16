//
//  JokeTableViewController.swift
//  Joke Bank
//
//  Created by Justin Bengtson on 1/1/19.
//  Copyright © 2019 Justin Bengtson. All rights reserved.
//

import UIKit

class JokeTableViewController: UITableViewController {
    
    var jokes: [Joke] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        let joke1 = Joke()
        joke1.jokeName = "Chicken"
        joke1.theJokeDefinition = "Question: Why did the Chicken cross the road?\n\n Answer: To get to the other side\n"
        
        let joke2 = Joke()
        joke2.jokeName = "Walk into a bar..."
        joke2.theJokeDefinition = "and saw a Jewish mom talking to a soccer mom about life after death"
        
        let joke3 = Joke()
        joke3.jokeName = "Olive"
        joke3.theJokeDefinition = "Two olives are on an olive tree branch play around. One of the olives bumps the other and knocks him off the branch. His friend wobbles to the edge and shouts down, \"Are you ok!?\" \n\nHi friend on the ground squeaks out \"Don't worry...olive\""
        
        let joke4 = Joke()
        joke4.jokeName = "Racer"
        joke4.theJokeDefinition = "Don't know anyone Olive Jokes lol"
        
        let joke5 = Joke()
        joke5.jokeName = "Knock Knock"
        joke5.theJokeDefinition = "Knocker: Knock knock\n Answerer: Who's there?\n Knocker: Boo\n Answerer: Boo who?\n Knocker: Boo who, why are you crying\n"
        
        let joke6 = Joke()
        joke6.jokeName = "Programming"
        joke6.theJokeDefinition = "Documentation is like sex.\nWhen it's good, it's very good.\nWhen it's bad, it's better than nothing.\n"
        
        jokes = [joke1, joke2, joke3, joke4, joke5, joke6]
    }

    // Question 1: How many?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        // Huge Numbers in Swift can use underscores seperate digits and places super neat!
        return jokes.count
    }

    // Question 2: What goes inside?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        // Configure the cell...
        // indexPath.row will increment this function will be called forever
        cell.textLabel?.text = jokes[indexPath.row].jokeName

        return cell
    }
    
    // WHen Someone taps on a cell
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Gets whatever item is tapped on
        let selectedJoke = jokes[indexPath.row]
        
        // Will move to next viewController
        performSegue(withIdentifier: "theJoke", sender: selectedJoke)
    }
    
    // Code that happens before moving on to the JokeViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jokeVC = segue.destination as? JokeViewController {
            
            if let selectedJoke = sender as? Joke {
                jokeVC.joke = selectedJoke
            }
        }
    }

}
