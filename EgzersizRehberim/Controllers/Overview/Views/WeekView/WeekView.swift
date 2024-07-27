//
//  WeekView.swift
//  EgzersizRehberim
//
//  Created by abdullah on 27.07.2024.
//

import UIKit

final class WeekView: BaseView {

    private let calendar = Calendar.current
    private var stackView = UIStackView()

    override func setupViews() {
        super.setupViews()
        addSubViews(stackView)
    }

    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    override func configureAppearance() {
        super.configureAppearance()
        stackView.spacing = 7
        stackView.distribution = .fillEqually

        var weekdays = calendar.shortStandaloneWeekdaySymbols
        let firstWeekdayIndex = calendar.firstWeekday - 1
        let sortedWeekdays = weekdays[firstWeekdayIndex...] + weekdays[..<firstWeekdayIndex]

        sortedWeekdays.enumerated().forEach { index, name in
            let view = WeekdayView()
            stackView.addArrangedSubview(view)
            view.configure(with: index, and: name)
        }
    }
}
