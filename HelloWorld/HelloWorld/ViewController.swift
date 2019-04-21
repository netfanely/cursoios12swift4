//
//  ViewController.swift
//  HelloWorld
//
//  Created by Fanely on 4/20/19.
//  Copyright © 2019 Net Fanely. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("la vista ha sido cargada")
    }

    @IBAction func boton(_ sender: UIButton) {
        self.texto.resignFirstResponder()
        let alerta = UIAlertController(title: "Bienvenido", message: texto.text, preferredStyle: .alert)
        let accion = UIAlertAction(title: "ok", style: .default){ (_) in
            print("click en el boton")
            
        }
        alerta.addAction(accion)
        present(alerta, animated: true, completion: nil)
      
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //elimina el teclado de la pantalla
    }
    
}

