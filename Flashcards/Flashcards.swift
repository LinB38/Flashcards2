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
        cards = [ Flashcard(question : "Where is this camp located?", options : ["Stanford", "Harvard", "UC Santa Cruz"]) )]
    }
}
