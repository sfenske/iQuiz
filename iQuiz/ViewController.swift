//
//  ViewController.swift
//  iQuiz
//
//  Created by Sydnie Fenske on 5/2/17.
//  Copyright © 2017 Sydnie Fenske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questions: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questions.text = desc[myIndex]
    }

    @IBAction func back(_ sender: Any) {
        performSegue(withIdentifier: "back", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

