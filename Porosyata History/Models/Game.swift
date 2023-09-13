//
//  Game.swift
//  Porosyata History
//
//  Created by Denis Sangi on 07/09/2023.
//It's a ViewModel part of MVVM

import Foundation

struct Game {
    
    //a property to track current question counter by its itndex
    private(set) var currentQuestionIndex = 0
    
    //creating instance of All Questions property
    private let questions = Question.allQuestions.shuffled()
    
    //creating guess propertie to track number of guesses made on each question
    private(set) var guesses = [Question: Int]()
    
    //a property to check if the game is over
    var isOver = false
    
    //a method for updating guesses dictionary
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    //this function updates current question counter and stops the game
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
    
    //a counter for correct and incorrect answers
    var guessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, guessindex) in guesses {
            if question.correctAnswerIndex == guessindex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    //counter for auestions left
    var numberOfQuestions: Int {
        questions.count
    }
    
    //a property of current question
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
}
