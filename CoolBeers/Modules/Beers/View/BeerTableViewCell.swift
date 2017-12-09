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
    
    override func awakeFromNib() {
        super.awakeFromNib()
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
            self.beerImageView.sd_setImage(with: URL(string: b.imageURL), placeholderImage: UIImage(named: "beer-placeholder"))
            self.beerNameLabel?.text = b.name
            self.beerTaglineLabel.text = b.tagline
        }
    }
}
