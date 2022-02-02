//
//  ContentView.swift
//  Memorise
//
//  Created by Manish Yadav on 29/05/21.
//

import SwiftUI

struct ContentView: View {
    // View 
   @ObservedObject var viewModel : EmojiMemoryGame
    var body: some View {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 74))]){
                    ForEach(viewModel.cards){ card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .onTapGesture {
                                viewModel.choose(card)
                            }
                        
                    }// creates bags of array
                    
                }
            }
            .foregroundColor(.red)
            .padding()
    }
}

struct CardView: View {
    let card: MemorieGame<String>.Card
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25.0)
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content)
                    .font(.largeTitle)
            }
            else {
                shape.fill()
                    
                
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
    }
}
