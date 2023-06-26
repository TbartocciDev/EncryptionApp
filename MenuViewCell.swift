//
//  MenuViewCell.swift
//  EncryptionApp
//
//  Created by Tommy Bartocci on 6/26/23.
//

import UIKit

class MenuViewCell: UITableViewCell {
    @IBOutlet weak var menuIconImg: UIImageView!
    @IBOutlet weak var menuTitleLbl: UILabel!

    func configureCell(title: String, imgURL: String) {
        menuTitleLbl.text = title
        
        if let imgUrl = URL(string: imgURL) {
            let session = URLSession(configuration: .default)
            
            let downLoadPic = session.dataTask(with: imgUrl) {
                (data, response, error) in
                
                if let err = error {
                    print("Error downloading image: \(err)")
                } else {
                    
                    if let imageData = data {
                        self.menuIconImg.image = UIImage(data: imageData)
                        
                    }
                }
            }
            downLoadPic.resume()
        }
        menuIconImg.image = .parseImgFrom(url: imgURL)
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}
