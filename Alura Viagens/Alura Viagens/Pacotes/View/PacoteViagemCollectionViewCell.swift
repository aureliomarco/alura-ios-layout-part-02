//
//  PacoteViagemCollectionViewCell.swift
//  Alura Viagens
//
//  Created by Marco Aurelio on 05/11/19.
//  Copyright © 2019 coda. All rights reserved.
//

import UIKit

class PacoteViagemCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imagemViagem: UIImageView!
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelQuantidadeDias: UILabel!
    @IBOutlet weak var labelPreco: UILabel!

    func configCell(packageTrip: PacoteViagem) {
        labelTitulo.text = packageTrip.viagem.titulo
        labelQuantidadeDias.text = "\(packageTrip.viagem.quantidadeDeDias) dias"
        labelPreco.text = "R$ \(packageTrip.viagem.preco)"
        imagemViagem.image = UIImage (named: packageTrip.viagem.caminhoDaImagem)
        layer.cornerRadius = 8
        layer.borderWidth = 0.5
        layer.masksToBounds = true
        layer.borderColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1).cgColor
    }
}
