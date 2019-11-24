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
    @IBOutlet weak var imagemIconAirplane: UIImageView!
    @IBOutlet weak var imagemIconHotel: UIImageView!
    @IBOutlet weak var imagemIconBreakfast: UIImageView!
    
    var pacoteSelecionado: PacoteViagem? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagemIconAirplane.image = UIImage(named: "Assets/icon_airplane.png")
        imagemIconHotel.image = UIImage(named: "Assets/icon_hotel.png")
        imagemIconBreakfast.image = UIImage(named: "Assets/icon_hotel.png")
        
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
