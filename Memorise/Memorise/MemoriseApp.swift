//
//  MemoriseApp.swift
//  Memorise
//
//  Created by Manish Yadav on 29/05/21.
//

import SwiftUI
//main program 
@main
struct MemoriseApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
