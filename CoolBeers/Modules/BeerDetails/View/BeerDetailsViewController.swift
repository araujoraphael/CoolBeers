//
//  BeerDetailsViewController.swift
//  CoolBeers
//
//  Created by Raphael Araújo on 09/12/17.
//  Copyright © 2017 Raphael Araújo. All rights reserved.
//

import UIKit

class BeerDetailsViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var taglineLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var presenter: BeerDetailsPresenter!
    var beer: Beer?

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.updateView()
//        nameLabel.text = "Cervaja Valerie Elizabeth Croft de Araújo"
//        taglineLabel.text = "A cerveja mais gostosa das Américas. A mais quente do Brasil. A Mais danada do Canadá!"
//        
//        descriptionLabel.text = "Desenvolver um App em Swift que consulte uma API e exiba uma lista de cervejas. Na listagem deve ser exibido imagem, nome e tagline. Ao selecionar um item na lista, exibir a tela de detalhes, contendo: imagem, nome, tagline e descrição. Desenvolver um App em Swift que consulte uma API e exiba uma lista de cervejas. Na listagem deve ser exibido imagem, nome e tagline. Ao selecionar um item na lista, exibir a tela de detalhes, contendo: imagem, nome, tagline e descrição. Desenvolver um App em Swift que consulte uma API e exiba uma lista de cervejas. Na listagem deve ser exibido imagem, nome e tagline. Ao selecionar um item na lista, exibir a tela de detalhes, contendo: imagem, nome, tagline e descrição.Desenvolver um App em Swift que consulte uma API e exiba uma lista de cervejas. Na listagem deve ser exibido imagem, nome e tagline. Ao selecionar um item na lista, exibir a tela de detalhes, contendo: imagem, nome, tagline e descrição.Desenvolver um App em Swift que consulte uma API e exiba uma lista de cervejas. Na listagem deve ser exibido imagem, nome e tagline. Ao selecionar um item na lista, exibir a tela de detalhes, contendo: imagem, nome, tagline e descrição.Desenvolver um App em Swift que consulte uma API e exiba uma lista de cervejas. Na listagem deve ser exibido imagem, nome e tagline. Ao selecionar um item na lista, exibir a tela de detalhes, contendo: imagem, nome, tagline e descrição."
//        
//        imageView.image = UIImage(named: "cerveja")
//        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showBeerDetails(beer: Beer) {
        nameLabel.text = beer.name
        taglineLabel.text = beer.tagline
        
        descriptionLabel.text = beer.beerDescription
        
        imageView.sd_setImage(with: URL(string: beer.imageURL), placeholderImage: UIImage(named: "beer-placeholder"), options: .retryFailed, completed: { (image, error, cacheType, url) in
        })
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
