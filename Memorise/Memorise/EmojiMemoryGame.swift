//
//  EmojiMemoryGame.swift
//  Memorise
//
//  Created by Manish Yadav on 01/06/21.
//

import SwiftUI
// view model 
class EmojiMemoryGame: ObservableObject {
   static let emojiArry = ["✈️", "🛩", "🚁", "🚀", "🚝", "⛵️", "🚅", "🚤", "🚈", "🚂", "🛳", "🚞", "🚉"]
    static func creatMemoryGame() -> MemorieGame<String> {
        MemorieGame<String>(numberOfPairOfCards: 4) {pairIndex in
                EmojiMemoryGame.emojiArry[pairIndex]
            }
    }
    
    @Published private var model: MemorieGame<String> = creatMemoryGame()
    
    
    var cards: Array<MemorieGame<String>.Card>{
        model.cards
    }
    
    // MARK: - Intent{s}
    func choose(_ card: MemorieGame<String>.Card) {
        model.choose(card)
    }
}


