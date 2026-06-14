//
//  ViewController.swift
//  Counter
//
//  Created by LiaKashirina on 24.05.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var counterButton: UIButton!
    
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var textView: UITextView!
    
    var counter = 0
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterButton.configuration?.baseForegroundColor = .systemRed
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        counterLabel.text = "Значение счетчика: 0"
        textView.text = "История изменений:"
        textView.isScrollEnabled = true
        textView.isEditable = false
    }
    
    func addHistory(_ text: String) {
        let date = dateFormatter.string(from: Date())
        textView.text += "\n[\(date)]: \(text)"
    }

    @IBAction func buttonDidTap(_ sender: Any) {
    counter += 1
    counterLabel.text = "Значение счетчика: \(counter)"
    addHistory("значение изменено на +1")
    }
    
    @IBAction func minusButtonDidTap(_ sender: Any) {
        if counter > 0 {
            counter -= 1
        addHistory("значение изменено на -1")
        } else {
            addHistory("попытка уменьшить значение счетчика ниже 0")
        }
        
        counterLabel.text = "Значение счетчика: \(counter)"
    }
    
    @IBAction func resetButtonDidTap(_ sender: Any) {
    counter = 0
    counterLabel.text = "Значение счетчика: \(counter)"
    addHistory("значение сброшено")
    }
    
    
}

