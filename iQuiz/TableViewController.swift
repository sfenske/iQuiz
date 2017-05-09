//
//  TableViewController.swift
//  iQuiz
//
//  Created by Sydnie Fenske on 5/2/17.
//  Copyright © 2017 Sydnie Fenske. All rights reserved.
//

import UIKit

var subjects = ["Mathematics", "Marvel Super Heroes", "Science"]
var desc = ["Math questions", "Marvel questions", "Science questions"]
var quests = ["Question1", "Question2", "Question3"]
var answers = [["answer1", "answer2", "answer3", "answer4"],["answer1", "answer2", "answer3", "answer4"],["answer1", "answer2", "answer3", "answer4"]]
var pics = ["math", "marvel", "science"]
var myIndex = 0

class TableViewController: UITableViewController {

    // MARK: - Table view data source

    
    
    @IBAction func settings(_ sender: Any) {
        createAlert(message: "Settings go here")
    }
    
    func createAlert(message:String) {
        let alert = UIAlertController(title:"Notice:", message:message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return subjects.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TVCTableViewCell
        cell.myIcons.image = UIImage(named: pics[indexPath.row] + ".jpg")
        cell.mySubs.text = subjects[indexPath.row]
        cell.descrip.text = desc[indexPath.row]
     
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
}
