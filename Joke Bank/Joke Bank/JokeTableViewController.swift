//
//  JokeTableViewController.swift
//  Joke Bank
//
//  Created by Justin Bengtson on 1/1/19.
//  Copyright © 2019 Justin Bengtson. All rights reserved.
//

import UIKit

class JokeTableViewController: UITableViewController {
    
    var jokes = ["Chicken", "Walk into a bar...", "Olive", "Racer", "Knock Knock", "Programmers"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
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
        cell.textLabel?.text = jokes[indexPath.row]

        return cell
    }
    
    // WHen Someone taps on a cell
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Gets whatever item is tapped on
        let joke = jokes[indexPath.row]
        
        // Will move to next viewController
        performSegue(withIdentifier: "theJoke", sender: joke)
    }

}
