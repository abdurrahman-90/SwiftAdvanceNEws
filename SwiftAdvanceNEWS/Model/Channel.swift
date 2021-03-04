//
//  Channel.swift
//  SwiftAdvanceNEWS
//
//  Created by Akdag on 2.03.2021.
//

import UIKit

enum sectionType {
    case NewsSources , Topics , Domains
}

struct Channel : Hashable {
    let identifier: UUID = UUID()
    let sectionType: sectionType
    var sites: [NewsSource]
    var topics: [String]
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(identifier)
    }
    static func == (lhs:Channel , rhs : Channel ) -> Bool {
        return lhs.identifier == rhs.identifier
    }
}
