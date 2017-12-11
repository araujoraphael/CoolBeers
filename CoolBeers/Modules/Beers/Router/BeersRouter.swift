//
//  BeersRouter.swift
//  CoolBeers
//
//  Created by Raphael Araújo on 08/12/17.
//  Copyright © 2017 Raphael Araújo. All rights reserved.
//

import UIKit

protocol BeersRouterInput {
    func presentDetails(forBeer: Beer)
}

class BeersRouter: NSObject, BeersRouterInput {
    weak var beersViewController: BeersViewController!
//    var detailsRouter:
    
    func presentDetails(forBeer beer: Beer) {
        let beerDetailsViewController = BeerDetailsRouter.startModule(beer: beer)
        beersViewController.navigationController?.pushViewController(beerDetailsViewController, animated: true)
    }
    
    
    static func startModule() -> UIViewController{
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let beersViewController = storyBoard.instantiateViewController(withIdentifier: "BeersViewController") as! BeersViewController
        let presenter = BeersPresenter()
        let interactor = BeersInteractor()
        let router = BeersRouter()
        
        let navigation = UINavigationController(rootViewController: beersViewController)
//        navigation.navigationBar.tintColor = UIColor(red: 200.0, green: 132.0, blue: 53.0, alpha: 1.0)
//        navigation.navigationBar.backgroundColor = UIColor(red: 200.0, green: 132.0, blue: 53.0, alpha: 1.0)
        navigation.navigationBar.tintColor = .white
        navigation.navigationBar.barTintColor = UIColor(red: 103/255, green: 26.0/255, blue: 61.0/255, alpha: 1.0)
        navigation.navigationBar.isTranslucent = false
        beersViewController.navigationItem.title = "Cool Beers List"
        beersViewController.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedStringKey.foregroundColor: UIColor.white]
//        view.navigationController?.navigationBar.barTintColor =
        
        beersViewController.presenter = presenter
        
        presenter.view = beersViewController
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        
        router.beersViewController = beersViewController
        
        return navigation
    }

}
