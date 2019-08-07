//
//  Question.swift
//  Quizzler
//
//  Created by Justin Elias on 8/5/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Question{
    
    //a method is a function associated with a class. These are properties
    let questionText : String
    let answer : Bool
    
    //initialize method for the class. What happens when new object is created from Question Class
    init (text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}
