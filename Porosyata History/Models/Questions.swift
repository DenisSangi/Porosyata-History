//
//  Questions.swift
//  Porosyata History
//
//  Created by Denis Sangi on 05/09/2023.
//It's a Model part of MVVM 

import Foundation

//Declaring Question structure with Hashable Conformance
struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    //Here we store all the game's questions
    static var allQuestions = [
        Question(questionText: "Who invented the World Wide Web?",
                 possibleAnswers: ["Steve Jobs",
                                   "Linus Torvalds",
                                   "Bill Gates",
                                   "Tim Berners-Lee"],
                 correctAnswerIndex: 3),
        Question(questionText: "What was the first object oriented programming language?",
                         possibleAnswers: [
                            "Simula",
                            "Python",
                            "Swift",
                            "C"
                         ],
                         correctAnswerIndex: 0)
    ]
}

