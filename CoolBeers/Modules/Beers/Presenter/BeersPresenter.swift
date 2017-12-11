//
//  BeersPresenter.swift
//  CoolBeers
//
//  Created by Raphael Araújo on 08/12/17.
//  Copyright © 2017 Raphael Araújo. All rights reserved.
//

import UIKit
protocol BeersModuleInterface: class {
    func updateView()
    func didSelectBeer(beer: Beer)
}

protocol BeersInteractorOutput: class {
    func beersListFetched(beers: [Beer])
}

class BeersPresenter: BeersModuleInterface, BeersInteractorOutput {
    weak var view: BeersViewInterface!
    var interactor: BeersInteractorInput!
    var router: BeersRouter!
    var beers: [Beer]?
    
    func updateView() {
        interactor.fetchBeersList()
    }
    
    func beersListFetched(beers: [Beer]) {
        if beers.count > 0 {
            self.beers = beers
            self.view.showBeersList(beers: beers)
        } else {
            self.view.showNoBeersScreen()
        }
    }
    
    func didSelectBeer(beer: Beer){
        router.presentDetails(forBeer: beer)
    }
    
}
