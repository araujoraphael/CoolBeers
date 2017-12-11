//
//  BeerDetailsPresenter.swift
//  CoolBeers
//
//  Created by Raphael Araújo on 10/12/17.
//  Copyright © 2017 Raphael Araújo. All rights reserved.
//

import UIKit

protocol BeerDetailsInteractorOutput: class {
    func beerDetailsFetched(beer: Beer)
}

protocol BeerDetailsModuleInterface: class {
    func updateView()
    func showBeersDetails()
}

class BeerDetailsPresenter:  BeerDetailsModuleInterface, BeerDetailsInteractorOutput {
    weak var view: BeerDetailsViewController!
    var interactor: BeerDetailsInteractorInput!
    var router: BeerDetailsRouter!
    var beer: Beer!
    
    func updateView() {
        interactor.fetchBeerDetails(beer: beer)
    }
    
    func showBeersDetails() {
    }
    
    func beerDetailsFetched(beer: Beer) {
        self.view.beer = beer
        self.view.showBeerDetails(beer: beer)
    }

}
