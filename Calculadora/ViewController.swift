//
//  ViewController.swift
//  Calculadora
//
//  Created by jcapasix on 13/10/17.
//  Copyright © 2017 Jordan Capa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var lblOperation: UILabel!


    @IBOutlet weak var txtN1: UITextField!
    @IBOutlet weak var txtN2: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func sumar(_ sender: Any) {
        if(!(self.txtN1.text?.isEmpty)! && !(self.txtN2.text?.isEmpty)!){
            self.lblResultado.text = "\(Int(self.txtN1.text!)! + Int(self.txtN2.text!)!)"
            self.lblOperation.text = "+"
        }
    }

    @IBAction func restar(_ sender: Any) {
        if(!(self.txtN1.text?.isEmpty)! && !(self.txtN2.text?.isEmpty)!){
            self.lblResultado.text = "\(Int(self.txtN1.text!)! - Int(self.txtN2.text!)!)"
            self.lblOperation.text = "-"
        }
    }

    @IBAction func multiplicar(_ sender: Any) {
        if(!(self.txtN1.text?.isEmpty)! && !(self.txtN2.text?.isEmpty)!){
            self.lblResultado.text = "\(Int(self.txtN1.text!)! * Int(self.txtN2.text!)!)"
            self.lblOperation.text = "x"
        }
    }

    @IBAction func dividir(_ sender: Any) {
        if(!(self.txtN1.text?.isEmpty)! && !(self.txtN2.text?.isEmpty)!){
            self.lblResultado.text = "\(Int(self.txtN1.text!)! / Int(self.txtN2.text!)!)"
            self.lblOperation.text = "/"
        }
    }


    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

}

