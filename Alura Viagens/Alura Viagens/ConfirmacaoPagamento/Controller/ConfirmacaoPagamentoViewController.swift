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
    
    var pacoteComprado: PacoteViagem? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let pacote = pacoteComprado {
            print(pacote.viagem.titulo)
        }
    }
}
