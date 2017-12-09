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
    
    
    static func startModule() -> UIViewController{
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyBoard.instantiateViewController(withIdentifier: "BeersViewController") as! BeersViewController
        let presenter = BeersPresenter()
        let interactor = BeersInteractor()
        let router = BeersRouter()
        
        let navigation = UINavigationController(rootViewController: view)
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        
        router.beersViewController = view
        
        return navigation
    }

}
