//
//  ContentView.swift
//  Memorize
//
//  Created by Brandon Potts on 3/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            let emojis: [String] = ["👻", "🎃", "🕷️", "😈", "😈"]
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp  = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
    
}

#Preview {
    ContentView()
}
