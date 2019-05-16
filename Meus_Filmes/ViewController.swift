//
//  ViewController.swift
//  Meus_Filmes
//
//  Created by Max Mendes on 15/05/19.
//  Copyright © 2019 Curso iOS. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        preencheFilmes()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso = "celulaReuso"
        let filme = filmes[indexPath.row]
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        celula.nomeFilme.text = filme.titulo
        celula.filmeImageView.image = filme.imagem
        
        celula.filmeImageView.layer.cornerRadius = 45
        celula.filmeImageView.clipsToBounds = true
        
        return celula
    }
    
    func preencheFilmes(){
        var filme: Filme
        let array:[String] = ["007-Spectre", "Star Wars - O Despertar da Força", "Impacto Mortal", "Deadpool", "O Regresso", "A Herdeira", "Caçadores de Emoção", "Regresso do Mal", "Tarzan", "Hardcore - Missão Extrema"]
        
        for position in 0..<array.count{
            
            let descricao: String = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages."
            let nomeFilme: String = "filme" + String(position+1)
            
            filme = Filme(titulo: array[position], descricao: descricao, imagem: UIImage.init(named:nomeFilme)!)
        filmes.append(filme)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDetalhes"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let filmeSelecionado = self.filmes[indexPath.row]
                let viewControllerDestino = segue.destination as! DetalhesFilmeViewController
                viewControllerDestino.filme = filmeSelecionado
            }
        }
    }
}

