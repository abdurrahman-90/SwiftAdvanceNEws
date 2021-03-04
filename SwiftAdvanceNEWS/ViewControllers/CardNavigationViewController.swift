//
//  CardNavigationViewController.swift
//  SwiftAdvanceNEWS
//
//  Created by Akdag on 2.03.2021.
//

import UIKit

class CardNavigationViewController: UINavigationController, Glideable {
    var headerHeight: CGFloat = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override init(rootViewController: UIViewController) {
        print("Hello")
        super.init(rootViewController: rootViewController)
    }
    

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
