//
//  BeerDetailsViewController.swift
//  CoolBeers
//
//  Created by Raphael Araújo on 09/12/17.
//  Copyright © 2017 Raphael Araújo. All rights reserved.
//

import UIKit

class BeerDetailsViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var taglineLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var presenter: BeerDetailsPresenter!
    var beer: Beer?

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.updateView()
    }
    
    func showBeerDetails(beer: Beer) {
        nameLabel.text = beer.name
        taglineLabel.text = beer.tagline
        
        descriptionLabel.text = beer.beerDescription
        
        imageView.sd_setImage(with: URL(string: beer.imageURL), placeholderImage: UIImage(named: "beer-placeholder"), options: .retryFailed, completed: { (image, error, cacheType, url) in
        })
    }
}
