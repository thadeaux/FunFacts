//
//  Trivia.swift
//  FunFacts
//
//  Created by Thad Aldridge on 2/25/25.
//
import Foundation

struct Trivia {
    var game: String
    var fact: String
    
    init(_ game: String, _ fact: String) {
        self.game = game
        self.fact = fact
    }
}
