//
//  NewSource.swift
//  SwiftAdvanceNEWS
//
//  Created by Akdag on 2.03.2021.
//

import UIKit

struct NewsSource : Codable , Hashable {
    let id : String
    let name : String
    let country : String
    let description : String
    let url : String
    let category  :String
}

struct Source : Codable {
    let sources : [NewsSource]
}
