//
//  RootRouter.swift
//  CoolBeers
//
//  Created by Raphael Araújo on 09/12/17.
//  Copyright © 2017 Raphael Araújo. All rights reserved.
//

import UIKit

class RootRouter: NSObject {
    //BeersRouter().startModule()
    
    func presentBeersScreen(in window: UIWindow) {
        window.makeKeyAndVisible()
        window.rootViewController = BeersRouter.startModule()
    }
}
