//
//  dateConverterMoscow.swift
//  Counter
//
//  Created by Артемий Толкишевский on 04.10.2024.
//

import Foundation

func dateConverterMoscow() -> String {
    let currentDate = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
    dateFormatter.timeZone = TimeZone(identifier: "Europe/Moscow")
    return dateFormatter.string(from: currentDate)
}
