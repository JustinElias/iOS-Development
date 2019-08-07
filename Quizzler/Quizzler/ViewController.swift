//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    //tracks which question the user is on
    var questionNumber : Int = 0
    var score: Int = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //we call this method because at load, the questionNumber will be less than 12
        nextQuestion()
        
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        //questionNumber++
        questionNumber = questionNumber + 1
        nextQuestion()
    }
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        
        progressLabel.text = "\(questionNumber + 1) / 13"
        
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    }
    
    func nextQuestion() {
        if questionNumber <= 12{
            questionLabel.text = allQuestions.list[questionNumber].questionText
            
            updateUI()
        }
        else {
            //UIAlertCOntroller pops up in the middle of the screen
            let alert = UIAlertController(title: "Awesome", message: "You are finished with the questions, would you like to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                //in should have a self
                self.startOver()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    func checkAnswer() {
        //creating a constant to hold the value of first question. tapping into allQuestions and getting list array
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer{
            ProgressHUD.showSuccess("Correct!")
            score = score + 1
        }else{
            ProgressHUD.showError("Wrong")
        }
    }
    
    
    func startOver() {
        //reset question number to 0 and tell app to go to the nextQuestion method
        questionNumber = 0
        score = 0
        nextQuestion()
    }
    

    
}
