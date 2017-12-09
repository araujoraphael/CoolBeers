//
//  BeersInteractor.swift
//  CoolBeers
//
//  Created by Raphael Araújo on 08/12/17.
//  Copyright © 2017 Raphael Araújo. All rights reserved.
//

import UIKit

protocol BeersInteractorInput: class {
    func fetchBeersList()
}
class BeersInteractor: BeersInteractorInput {
    let APIBaseURL = "https://api.punkapi.com/v2/"
    weak var output: BeersInteractorOutput!
    
    func fetchBeersList() {
        //self.output.beersListFetched()
    }
}
