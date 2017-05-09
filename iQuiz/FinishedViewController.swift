//
//  FinishedViewController.swift
//  iQuiz
//
//  Created by Sydnie Fenske on 5/9/17.
//  Copyright © 2017 Sydnie Fenske. All rights reserved.
//

import UIKit

class FinishedViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Youre Done!"
        scoreLabel.text = "You got:" + String(score) + "/" + String(quests.count)
        let total = Double(score / quests.count)
        if total == 1.0 {
            message.text = "Perfect Score!"
        } else if total >= 0.8 {
            message.text = "Good job!"
        } else if total >= 0.5 {
            message.text = "You can do better!"
        } else {
            message.text = "Better luck next time!"
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: Any) {
        performSegue(withIdentifier: "back", sender: self)
        currentQuestion = 0
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
