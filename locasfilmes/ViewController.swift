//
//  ViewController.swift
//  locasfilmes
//
//  Created by Usuário Convidado on 17/08/17.
//  Copyright © 2017 Gabriel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblFilme: UILabel!
    @IBOutlet weak var lblAno: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var textoDoFilme: String = ""
    var textoDoAno: String = ""
    var imagem: UIImage?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblAno.text = textoDoAno
        lblFilme.text = textoDoFilme
        img.image = imagem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

