//
//  DetalhesViagensViewController.swift
//  Alura Viagens
//
//  Created by Marco Aurelio on 24/11/19.
//  Copyright © 2019 coda. All rights reserved.
//

import UIKit

class DetalhesViagensViewController: UIViewController {
    
    @IBOutlet weak var imagemPacoteViagem: UIImageView!
    @IBOutlet weak var labelTituloPacoteViagem: UILabel!
    @IBOutlet weak var labelDescricaoPacoteViagem: UILabel!
    @IBOutlet weak var labelDataViagem: UILabel!
    @IBOutlet weak var labelPrecoPacoteViagem: UILabel!
    
    var pacoteSelecionado: PacoteViagem? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let pacote = pacoteSelecionado {
            imagemPacoteViagem.image = UIImage(named: pacote.viagem.caminhoDaImagem)
            labelTituloPacoteViagem.text = pacote.viagem.titulo
            labelDescricaoPacoteViagem.text = pacote.descricao
            labelDataViagem.text = pacote.dataViagem
            labelPrecoPacoteViagem.text = pacote.viagem.preco
        }
        
    }

    @IBAction func botaoVoltar(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
