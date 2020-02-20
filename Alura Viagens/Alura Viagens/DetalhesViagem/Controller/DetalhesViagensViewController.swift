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
    @IBOutlet weak var imagemIconBack: UIButton!
    @IBOutlet weak var scrollPrincipal: UIScrollView!
    @IBOutlet weak var textFieldData: UITextField!

    var pacoteSelecionado: PacoteViagem? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(aumentarScroll(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)

        imagemIconAirplane.image = UIImage(named: "Assets/icon_airplane.png")
        imagemIconHotel.image = UIImage(named: "Assets/icon_hotel.png")
        imagemIconBreakfast.image = UIImage(named: "Assets/icon_hotel.png")
        imagemIconBack.setImage(UIImage(named: "Assets/icon_back.png"), for: .normal)

        if let pacote = pacoteSelecionado {
            imagemPacoteViagem.image = UIImage(named: pacote.viagem.caminhoDaImagem)
            labelTituloPacoteViagem.text = pacote.viagem.titulo
            labelDescricaoPacoteViagem.text = pacote.descricao
            labelDataViagem.text = "válido para o período de: \(pacote.dataViagem)"
            labelPrecoPacoteViagem.text = pacote.viagem.preco
        }
        
    }

    @objc func aumentarScroll(notification: Notification) {
        self.scrollPrincipal.contentSize = CGSize(width: scrollPrincipal.frame.width, height: scrollPrincipal.frame.height + 320)
    }

    @objc func exibeDataTextField(_ sender: UIDatePicker) {
        let formatador = DateFormatter()
        formatador.dateFormat = "dd/MM/yyyy"
        textFieldData.text = formatador.string(from: sender.date)
    }

    @IBAction func botaoVoltar(_ sender: UIButton) {
        if let navigation = navigationController {
            navigation.popViewController(animated: true)
        }
    }

    @IBAction func textFieldEntrouFoco(_ sender: UITextField) {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        sender.inputView = datePicker
        
        datePicker.addTarget(self, action: #selector(exibeDataTextField(_:)), for: .valueChanged)
    }

    @IBAction func botaoFinalizarCompra(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "confirmacaoPagamento") as! ConfirmacaoPagamentoViewController
        controller.pacoteComprado = pacoteSelecionado
        controller.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
