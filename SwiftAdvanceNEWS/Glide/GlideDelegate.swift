//
//  GlideDelegate.swift
//  SwiftAdvanceNEWS
//
//  Created by Akdag on 2.03.2021.
//

import UIKit

protocol GlideDelegate : class {
    func glideDidClose()
    func glideStateChangingFromOpenToCompress()
}

extension GlideDelegate {
    func glideStateChangingFromOpenToCompress() { }
}
