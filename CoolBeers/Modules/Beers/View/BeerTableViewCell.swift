//
//  BeerTableViewCell.swift
//  CoolBeers
//
//  Created by Raphael Araújo on 09/12/17.
//  Copyright © 2017 Raphael Araújo. All rights reserved.
//

import UIKit
import SDWebImage
class BeerTableViewCell: UITableViewCell {
    @IBOutlet weak var beerImageView: UIImageView!
    @IBOutlet weak var beerNameLabel: UILabel!
    @IBOutlet weak var beerTaglineLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.accessoryView?.tintColor = UIColor(red: 103/255, green: 26.0/255, blue: 61.0/255, alpha: 1.0)
//        myLikesButton.imageEdgeInsets = UIEdgeInsetsMake(0, left, bottom, right);

        // Initialization code
    }
    
    var beer: Beer? {
        didSet {
            layoutSubviews()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if let b = beer {
//            self.beerImageView.sd_setImage(with: URL(string: b.imageURL), placeholderImage: UIImage(named: "beer-placeholder"))
            self.beerImageView.sd_setImage(with: URL(string: b.imageURL), placeholderImage: UIImage(named: "beer-placeholder"), options: .retryFailed, completed: { (image, error, cacheType, url) in
                
            })
            self.beerNameLabel?.text = b.name
            self.beerTaglineLabel.text = b.tagline
        }
    }
}
