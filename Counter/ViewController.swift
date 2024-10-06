//
//  ViewController.swift
//  Counter
//
//  Created by Артемий Толкишевский on 04.10.2024.
//

import UIKit

final class ViewController: UIViewController {

    private var counter: Int = 0
    private var history: String = ""

    @IBOutlet weak private var minusButton: UIButton!
    @IBOutlet weak private var zeroButton: UIButton!
    @IBOutlet weak private var plusButton: UIButton!
    @IBOutlet weak private var historyTextView: UITextView!
    @IBOutlet weak private var counterLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        history = "История изменений:\n"
        historyTextView.text = history
        counterLabel.text = "Значение счётчика: \(counter)"
    }

    private func dateConverterMoscow() -> String {
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        dateFormatter.timeZone = TimeZone(identifier: "Europe/Moscow")
        return dateFormatter.string(from: currentDate)
    }

    @IBAction private func minusPushed(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            history += "[\(dateConverterMoscow())]: значение изменено на -1\n"
            counterLabel.text = "Значение счётчика: \(counter)"
        } else {
            history += "[\(dateConverterMoscow())]: попытка уменьшить значение счётчика ниже 0\n"
        }
        historyTextView.text = history
    }

    @IBAction private func plusPushed(_ sender: Any) {
        counter += 1
        history += "[\(dateConverterMoscow())]: значение изменено на +1\n"
        historyTextView.text = history
        counterLabel.text = "Значение счётчика: \(counter)"
    }

    @IBAction private func zeroPushed(_ sender: Any) {
        counter = 0
        history += "[\(dateConverterMoscow())]: значение сброшено\n"
        historyTextView.text = history
        counterLabel.text = "Значение счётчика: \(counter)"
    }
}

