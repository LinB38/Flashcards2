//
//  ViewController.swift
//  Flashcards
//
//  Created by iD Student on 7/31/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionView: UITextView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.dataSource = self
        
        setUpCardUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpCardUI () {
        questionView.text = CardCollection.instance.currentCard.question
        questionLabel.text = "Question \(CardCollection.instance.currentIndex+1)/\(CardCollection.instance.cards.count)"
    }
    
    public func numberOfComponents (in pickerView : UIPickerView) -> Int {
        return 1;
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CardCollection.instance.currentCard.options.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return CardCollection.instance.currentCard.options[row];
    }
    
    @IBAction func submitPressed(_ sender: Any) {
        
        
    }
}
