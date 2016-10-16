//
//  InputSource.swift
//  ImageSlideshow
//
//  Created by Petr Zvoníček on 14.01.16.
//
//

import UIKit

@objc public protocol InputSource {
    func set(to imageView: UIImageView);
}

open class ImageSource: NSObject, InputSource {
    var image: UIImage!
    
    public init(image: UIImage) {
        self.image = image
    }
    
    public init?(imageString: String) {
        if let image = UIImage(named: imageString) {
            self.image = image
            super.init()
        } else {
            return nil
        }
    }

    @objc public func set(to imageView: UIImageView) {
        imageView.image = image
    }
}
