//
//  BeerDetailsInteractor.swift
//  CoolBeers
//
//  Created by Raphael Araújo on 10/12/17.
//  Copyright © 2017 Raphael Araújo. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
protocol BeerDetailsInteractorInput: class {
    func fetchBeerDetails(beer: Beer)
}
class BeerDetailsInteractor: BeerDetailsInteractorInput {
    let APIBaseURL = "https://api.punkapi.com/v2/beers"
    weak var output: BeerDetailsInteractorOutput!
    
    func fetchBeerDetails(beer: Beer) {
        let url = "\(APIBaseURL)/\(beer.id)"
        Alamofire.request(url).responseArray() { (response: DataResponse<[Beer]>)  in
            if let beers = response.result.value {
                if let beer = beers.first {
                    self.output.beerDetailsFetched(beer: beer)
                }
            } else {
                print(response)
            }
        }
    }
}
