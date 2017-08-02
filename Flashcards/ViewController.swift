//
//  ViewController.swift
//  Flashcards
//
//  Created by iD Student on 7/31/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionView: UITextView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
   
    @IBAction func submitPressed(_ sender: Any) {
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCardUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpCardUI () {
        questionView.text = CardCollection.instance.currentCard.question
        //pickerView.text = [CardCollection.instance.currentCard.options]
        questionLabel.text = "Question \(CardCollection.instance.currentIndex+1)/\(CardCollection.instance.cards.count)"
    }

}

