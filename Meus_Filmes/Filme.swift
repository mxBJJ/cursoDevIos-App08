//
//  Filme.swift
//  Meus_Filmes
//
//  Created by Max Mendes on 15/05/19.
//  Copyright © 2019 Curso iOS. All rights reserved.
//

import UIKit

class Filme{
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    
    init(titulo: String, descricao:String, imagem:UIImage){
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
}
