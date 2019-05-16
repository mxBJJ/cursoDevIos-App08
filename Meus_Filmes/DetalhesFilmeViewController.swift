//
//  DetalhesFilmeViewController.swift
//  Meus_Filmes
//
//  Created by Max Mendes on 15/05/19.
//  Copyright © 2019 Curso iOS. All rights reserved.
//

import UIKit

class DetalhesFilmeViewController:UIViewController{
   
    @IBOutlet weak var filmeImagem: UIImageView!
    
    @IBOutlet weak var tituloFilme: UILabel!
    @IBOutlet weak var descricaoFilme: UILabel!
    
    
    var filme: Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeImagem.image = filme.imagem
        tituloFilme.text = filme.titulo
        descricaoFilme.text =  filme.descricao
    }
}
