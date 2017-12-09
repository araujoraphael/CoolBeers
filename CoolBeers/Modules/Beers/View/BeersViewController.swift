//
//  BeersViewController.swift
//  CoolBeers
//
//  Created by Raphael Araújo on 08/12/17.
//  Copyright © 2017 Raphael Araújo. All rights reserved.
//

import UIKit

protocol BeersViewInterface: class {
    func showBeersList(beers: [Beer])
    func showNoBeersScreen()
    
}
class BeersViewController: UIViewController, BeersViewInterface {
    @IBOutlet weak var beersTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showBeersList(beers: [Beer]) {
        
    }
    
    func showNoBeersScreen() {
        
    }
}

extension BeersViewController: UITableViewDelegate {
    
}

extension BeersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        // Configure the cell...
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
}
