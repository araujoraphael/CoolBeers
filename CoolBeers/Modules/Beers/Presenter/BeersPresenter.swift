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
    func showBeersDetails()
}

protocol BeersInteractorOutput: class {
    func beersListFetched(beers: [Beer])
}

class BeersPresenter: BeersModuleInterface, BeersInteractorOutput {
    weak var view: BeersViewInterface!
    var interactor: BeersInteractorOutput!
    var router: BeersRouter!
    
    func updateView() {
        
    }
    
    func showBeersDetails() {
        
    }
    
    func beersListFetched(beers: [Beer]) {
        
    }
}
