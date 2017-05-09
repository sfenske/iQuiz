//
//  AnswerViewController.swift
//  iQuiz
//
//  Created by Sydnie Fenske on 5/9/17.
//  Copyright © 2017 Sydnie Fenske. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    @IBOutlet weak var questionBox: UILabel!
    @IBOutlet weak var answerBox: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelBox.text = correct
        questionBox.text = quest
        answerBox.text = answer
        // Do any additional setup after loading the view.
    }

    @IBAction func next(_ sender: Any) {
        if currentQuestion != quests.count {
            performSegue(withIdentifier: "nextQuestion", sender: self)
        } else {
            performSegue(withIdentifier: "finished", sender: self)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var labelBox: UILabel!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
