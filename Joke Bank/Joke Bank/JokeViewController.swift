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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = joke
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
