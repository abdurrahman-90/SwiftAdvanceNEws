//
//  ImageViewExtensions.swift
//  SwiftAdvanceNEWS
//
//  Created by Akdag on 2.03.2021.
//

import UIKit

extension UIImageView {
    
    func loadImage(at urlString: String) {
        let urlConverted = URL(string: urlString)
        if let url = urlConverted {
            UIImageLoader.loader.load(url, for: self)
        }
    }
    
    func cancelImageLoad() {
        UIImageLoader.loader.cancel(for: self)
    }
}
