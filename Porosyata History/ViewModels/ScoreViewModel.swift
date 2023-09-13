//
//  ScoreViewModel.swift
//  Porosyata History
//
//  Created by Denis Sangi on 13/09/2023.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
