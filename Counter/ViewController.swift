//
//  ViewController.swift
//  Counter
//
//  Created by Артемий Толкишевский on 04.10.2024.
//

import UIKit

class ViewController: UIViewController {

    var counter: Int = 0
    var history: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        history = "История изменений:\n"
        historyTextView.text = history
        counterLabel.text = "Значение счётчика: \(counter)"
    }

    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var historyTextView: UITextView!
    @IBOutlet weak var counterLabel: UILabel!


    @IBAction func minusPushed(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            history += "[\(dateConverterMoscow())]: значение изменено на -1\n"
            counterLabel.text = "Значение счётчика: \(counter)"
        } else {
            history += "[\(dateConverterMoscow())]: попытка уменьшить значение счётчика ниже 0\n"
        }
        historyTextView.text = history
    }

    @IBAction func plusPushed(_ sender: Any) {
        counter += 1
        history += "[\(dateConverterMoscow())]: значение изменено на +1\n"
        historyTextView.text = history
        counterLabel.text = "Значение счётчика: \(counter)"
    }

    @IBAction func zeroPushed(_ sender: Any) {
        counter = 0
        history += "[\(dateConverterMoscow())]: значение сброшено\n"
        historyTextView.text = history
        counterLabel.text = "Значение счётчика: \(counter)"
    }
}

