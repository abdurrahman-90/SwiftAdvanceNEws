//
//  GlideConfiguration.swift
//  SwiftAdvanceNEWS
//
//  Created by Akdag on 2.03.2021.
//

import UIKit

enum GlideConcreteDimension {
    case fullScreen
    case half
    case oneFourth
    case oneThird
    case custom(CGFloat)
    
    func translateView(containerView parent: UIView, navControllerPresent: Bool) -> CGFloat {
        switch self {
        case .fullScreen:
            let _ = parent.bounds.height
            var constraintConstant: CGFloat = 0
            let navBar: CGFloat = navControllerPresent ? 44 : 0
            constraintConstant = navBar
            return constraintConstant
        case .half:
            return (parent.bounds.height - parent.bounds.height / 2)
        case .oneFourth:
            return (parent.bounds.height - parent.bounds.height / 4)
        case .oneThird:
            return (parent.bounds.height - parent.bounds.height / 3)
        case let .custom(height):
            return (height > parent.bounds.height) ? parent.bounds.height: (parent.bounds.height - height)
        }
    }
}

protocol GlideConfiguration : class {
    
    var segmented: Bool { get }

    var segmentHeightDictionary: [State: CGFloat] { get }

    var concreteDimension: GlideConcreteDimension { get }

    var popUpIndicator: Bool { get }
   
}
