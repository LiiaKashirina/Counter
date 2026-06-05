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
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterButton.configuration?.baseForegroundColor = .green
        
        counterLabel.text = "Значение счетчика: 0"
    }

    @IBAction func buttonDidTap(_ sender: Any) {
    counter += 1
    counterLabel.text = "Значение счетчика: \(counter)"
    }
    
}

