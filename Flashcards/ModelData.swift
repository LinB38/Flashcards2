//
//  ModelData.swift
//  Flashcards
//
//  Created by iD Student on 8/1/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import Foundation


class Flashcard {
    var question : String
    var options : [String]
    var correctAnswer : String
    
    init(question : String, options : [String]) {
        self.question = question
        self.options = options
        
        self.correctAnswer = options[0]
    }
    
}

class CardCollection {
    public static var instance : CardCollection = CardCollection()
    public private(set) var cards : [Flashcard]
    public private(set) var currentIndex : Int
    public var currentCard : Flashcard {
        get {return cards[currentIndex]}
    }
    private init() {
        cards = [
            Flashcard(question : "Where is this ID Tech located?",
                      options : ["Stanford", "Harvard", "UC Santa Cruz"]),
            Flashcard(question : "How long is Teen Freedom?",
                      options : ["2 hours", "3 hours", "4 hours", "9 hours"]),
            Flashcard(question : "When is lights out on a normal night?",
                      options : ["10:00 PM", "9:00 PM", "11:00 PM", "1:00 AM", "12:00 AM"])
        ]
        currentIndex = 0
        
    }
    
    public func nextQuestion () {
        currentIndex += 1
        if currentIndex >= cards.count {
            currentIndex = 0
        }
    }
    
    public func checkAnswer(_ selectedAnswer : Int) -> Bool {
        return currentCard.options[selectedAnswer] == currentCard.correctAnswer
    }
}

