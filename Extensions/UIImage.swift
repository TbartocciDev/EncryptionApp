//
//  UIImage.swift
//  EncryptionApp
//
//  Created by Tommy Bartocci on 6/26/23.
//

import UIKit

extension UIImage {
    static func parseImgFrom(url: String) -> UIImage? {
        var image = UIImage(named: "")
        if let imgUrl = URL(string: url) {
            let session = URLSession(configuration: .default)
            
            let downLoadPic = session.dataTask(with: imgUrl) {
                (data, response, error) in
                
                if let err = error {
                    print("Error downloading image: \(err)")
                } else {
                    
                    if let imageData = data {
                         image = UIImage(data: imageData)
                    }
                }
            }
            downLoadPic.resume()
        }
        return image
    }
}
