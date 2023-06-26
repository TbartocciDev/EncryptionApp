//
//  UIFont.swift
//  EncryptionApp
//
//  Created by Tommy Bartocci on 6/26/23.
//

import UIKit

extension UIFont {
    static func SofiaSans(name: String, size: CGFloat) -> UIFont? {
        return UIFont(name: "SofiaSans-\(name.capitalized)", size: size)
    }
}
