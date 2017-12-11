//
//  BeerDetailsRouter.swift
//  CoolBeers
//
//  Created by Raphael Araújo on 08/12/17.
//  Copyright © 2017 Raphael Araújo. All rights reserved.
//

import UIKit

protocol BeerDetailsRouterInput: class {
    
}
class BeerDetailsRouter: NSObject, BeerDetailsRouterInput {
    weak var beerDetailsViewController: BeerDetailsViewController!

    static func startModule(beer: Beer) -> UIViewController {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyBoard.instantiateViewController(withIdentifier: "BeerDetailsViewController") as! BeerDetailsViewController
        let presenter = BeerDetailsPresenter()
        let router = BeerDetailsRouter()
        
        let interactor = BeerDetailsInteractor()
        presenter.beer = beer
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        
        router.beerDetailsViewController = view
        
        
        return view
        
    }

}
