//
//  Date+Ext.swift
//  EgzersizRehberim
//
//  Created by abdullah on 27.07.2024.
//

import UIKit

extension Date {
    private var calendar: Calendar {
        var calendar = Calendar.current
        calendar.firstWeekday = 2 // Pazartesi haftanın ilk günü olarak ayarlanıyor
        return calendar
    }

    var startOfWeek: Date {
        let components = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        guard let firstDay = calendar.date(from: components) else { return self }

        let weekday = calendar.component(.weekday, from: firstDay)
        let daysToSubtract = (weekday + 5) % 7 // Pazartesi için düzeltme

        return calendar.date(byAdding: .day, value: -daysToSubtract, to: firstDay) ?? self
    }

    func agoForward(to days: Int) -> Date {
        return calendar.date(byAdding: .day, value: days, to: self) ?? self
    }

    func stripTime() -> Date {
        let components = calendar.dateComponents([.year, .month, .day], from: self)
        return calendar.date(from: components) ?? self
    }
}
