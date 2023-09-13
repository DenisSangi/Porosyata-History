//
//  ContentView.swift
//  Porosyata History
//
//  Created by Denis Sangi on 28/08/2023.
//
//It's a View part of MVVM

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
            .environmentObject(viewModel)
        }
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(
                correctGuesses: viewModel.correctGuesses,
                incorrectGuesses: viewModel.incorrectGuesses)),
                label: { EmptyView() })
        )
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
