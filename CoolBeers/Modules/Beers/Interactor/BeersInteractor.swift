//
//  BeersInteractor.swift
//  CoolBeers
//
//  Created by Raphael Araújo on 08/12/17.
//  Copyright © 2017 Raphael Araújo. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
protocol BeersInteractorInput: class {
    func fetchBeersList()
}
class BeersInteractor: BeersInteractorInput {
    let APIBaseURL = "https://api.punkapi.com/v2/beers"
    let path = Bundle.main.path(forResource: "beers", ofType: "json")!
    weak var output: BeersInteractorOutput!
    
    func fetchBeersList() {
        let url = URL(fileURLWithPath: path)

        Alamofire.request(url).responseArray() { (response: DataResponse<[Beer]>)  in
            if let beers = response.result.value {
                self.output.beersListFetched(beers: beers)
            } else {
                print(response)
            }
        }
    }
}
