//
//  BottomTextView.swift
//  Porosyata History
//
//  Created by Denis Sangi on 11/09/2023.
//It's a View which holds a text for a bottom button of Welcome(and maybe others) screen so you wouldn't have to define it in each other Views

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accent)
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "")
    }
}
