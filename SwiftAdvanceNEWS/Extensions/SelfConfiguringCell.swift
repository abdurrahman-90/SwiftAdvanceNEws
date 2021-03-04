//
//  SelfConfiguringCell.swift
//  SwiftAdvanceNEWS
//
//  Created by Akdag on 2.03.2021.
//

import Foundation
protocol SelfConfiguringCell {
    static var reuseIdentifier: String { get }
    func configure(with article: Article)
}
