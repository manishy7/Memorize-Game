//
//  MemorieGame.swift
//  Memorise
//
//  Created by Manish Yadav on 01/06/21.
//

import Foundation
// Model or structure return in swift that is why foundation are writen 
struct MemorieGame<CardContent> {
   private(set) var cards: Array<Card>
    
   mutating func choose(_ card: Card) {
        let chosenIndex = index(of: card)
        cards[chosenIndex].isFaceUp.toggle()
        print("\(cards)")
    }
    func index(of card: Card) -> Int {
        for index in 0..<cards.count {
            if cards[index].id == card.id {
               return index
            }
        }
        return 0 //bogus
    }
    init(numberOfPairOfCards: Int, creatCardContent : (Int)->CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairOfCards {
            let content: CardContent = creatCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
            
        }
    }
    struct Card: Identifiable {
        var isFaceUp : Bool = true
        var isMatched : Bool = false
        var content : CardContent
        var id: Int
    }
}
