//
//  ViewController.swift
//  iQuiz
//
//  Created by Sydnie Fenske on 5/2/17.
//  Copyright © 2017 Sydnie Fenske. All rights reserved.
//

import UIKit

var correct = "WRONG!"
var currentQuestion = 0
var score = 0
var rightAnswer:UInt32 = 0
var answer = ""
var quest = ""

class ViewController: UIViewController {
    
    @IBOutlet weak var questions: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if currentQuestion != quests.count {
            newQuestion()
        }
    }
    
    @IBAction func buttons(_ sender: AnyObject) {
        if (sender.tag == Int(rightAnswer)) {
            correct = "RIGHT!"
            score += 1
        } else {
            correct = "WRONG!"
        }
        performSegue(withIdentifier: "showAnswer", sender: self)
    }

    
    func newQuestion() {
        questions.text = quests[currentQuestion]
        quest = quests[currentQuestion]
        rightAnswer = arc4random_uniform(4)+1
        var button:UIButton = UIButton()
        var x = 1
        for i in 1...4 {
            button = view.viewWithTag(i) as! UIButton
            if i == Int(rightAnswer) {
                button.setTitle(answers[currentQuestion][0], for: .normal)
                answer = answers[currentQuestion][0]
            } else {
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x += 1
            }
        }
        currentQuestion += 1
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

