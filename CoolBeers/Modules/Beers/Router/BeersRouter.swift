//
//  BeersRouter.swift
//  CoolBeers
//
//  Created by Raphael Araújo on 08/12/17.
//  Copyright © 2017 Raphael Araújo. All rights reserved.
//

import UIKit

protocol BeersRouterInput {
    func presentDetailsInterfaceForBeer(beer: Beer)
}
class BeersRouter: NSObject, BeersRouterInput {
    weak var beersViewController: BeersViewController!
//    var detailsRouter:
    
    func presentDetailsInterfaceForBeer(beer: Beer) {
        
    }

}
