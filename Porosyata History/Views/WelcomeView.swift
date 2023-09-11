//
//  WelcomeView.swift
//  Porosyata History
//
//  Created by Denis Sangi on 11/09/2023.
//  This is the Welcome View

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.accent.ignoresSafeArea()
                VStack {
                    Spacer()
                    //Welcome text
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answers to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    Spacer()
                    //Navigation link to Game View with Back button
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(str: "Okay let's go")
                        })
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
