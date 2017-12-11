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
    var presenter: BeersPresenter!
    var beers: [Beer] = [Beer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "BeerTableViewCell", bundle: nil)
        self.beersTableView.register(nib, forCellReuseIdentifier: "BeerTableViewCell")
        presenter.updateView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    func showBeersList(beers: [Beer]) {
        self.beers = beers
        self.beersTableView.reloadData()
        print(beers)
    }
    
    func showNoBeersScreen() {
        
    }
}

extension BeersViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        presenter.didSelectBeer(beer: beers[indexPath.row])
    }
}

extension BeersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeerTableViewCell", for: indexPath) as! BeerTableViewCell
        
        let beer = beers[indexPath.row]
        cell.beer = beer
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beers.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 106.0
    }
}
