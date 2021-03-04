//
//  Configuration.swift
//  SwiftAdvanceNEWS
//
//  Created by Akdag on 2.03.2021.
//

import UIKit

class Configuration: GlideConfiguration {
    var segmented: Bool = true
    
    var segmentHeightDictionary: [State : CGFloat] = [State.open : UIScreen.main.bounds.height - 60,
                                                      State.compressed : 420,
                                                      State.closed : 0]
    
    var concreteDimension: GlideConcreteDimension = .fullScreen
    
    var popUpIndicator: Bool = true
    
    
}
