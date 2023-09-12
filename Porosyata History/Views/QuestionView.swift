//
//  QuestionView.swift
//  Porosyata History
//
//  Created by Denis Sangi on 12/09/2023.
//

import SwiftUI

struct QuestionView: View {
  
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
  
  var body: some View {
    VStack {
        Text(question.questionText)
            .font(.largeTitle)
            .bold()
            .multilineTextAlignment(.leading)
        Spacer()
        HStack {
            ForEach(0..<question.possibleAnswers.count, id: \.self) { answerIndex in
                Button(action: {
                    viewModel.makeGuess(atIndex: answerIndex)
                    print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                }, label: {
                    ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        .background(viewModel.color(forOptionIndex: answerIndex))
                })
                .disabled(viewModel.guessWasMade)
            }
      }
      if viewModel.guessWasMade {
          Button(action: {viewModel.displayNextScreen() }) {
              BottomTextView(str: "Next")
          }
          .padding()
      }
    }
  }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
      QuestionView(question: Game().currentQuestion)
            .environmentObject(GameViewModel())
    }
}
