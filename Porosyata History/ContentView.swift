//
//  ContentView.swift
//  Porosyata History
//
//  Created by Denis Sangi on 28/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.blue)
            Text("Hello, world!")
                .font(.title)
                .foregroundColor(Color.orange)
            Text("I'm learning Swift")
                .font(Font.custom("Helvetica", size: 16))
                .foregroundColor(Color.green)
                .bold()
            Button(action: {
                print("Clicked")
            }, label: {
                Text("Click on me")
                    .foregroundColor(.black)
            })
            .padding()
            .background(Color.pink)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
