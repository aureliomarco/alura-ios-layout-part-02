//
//  ConfirmacaoPagamentoViewController.swift
//  Alura Viagens
//
//  Created by Marco Aurelio on 14/01/20.
//  Copyright © 2020 coda. All rights reserved.
//

import UIKit

class ConfirmacaoPagamentoViewController: UIViewController {

    @IBOutlet private weak var imagemPacoteViagem: UIImageView!
    @IBOutlet private weak var labelTituloPacoteViagem: UILabel!
    @IBOutlet private weak var labelHotelPacoteViagem: UILabel!
    @IBOutlet private weak var labelDataPacoteViagem: UILabel!
    @IBOutlet private weak var labelQuantidadePessoas: UILabel!
    @IBOutlet private weak var labelDescricaoPacoteViagem: UILabel!
    @IBOutlet private weak var botaoVoltarHome: UIButton!
    
    var pacoteComprado: PacoteViagem? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let pacote = pacoteComprado {
            imagemPacoteViagem.image = UIImage(named: pacote.viagem.caminhoDaImagem)
            labelHotelPacoteViagem.text = pacote.nomeDoHotel
            labelTituloPacoteViagem.text = pacote.viagem.titulo.uppercased()
            labelDataPacoteViagem.text = pacote.dataViagem
            labelDescricaoPacoteViagem.text = pacote.descricao
            
            imagemPacoteViagem.layer.cornerRadius = 10
            imagemPacoteViagem.layer.masksToBounds = true
            
            botaoVoltarHome.layer.cornerRadius = 8
            botaoVoltarHome.layer.masksToBounds = true
        }
    }
    
    @IBAction func botaoVoltarHOme(_ sender: Any) {
        if let navigation = self.navigationController {
            navigation.popToRootViewController(animated: true)
        }
    }
}
