//
//  Campos.swift
//  CEDAC
//
//  Created by Sebastián Loredo on 10/10/15.
//  Copyright © 2015 Carlos Sebastián Loredo Gómez. All rights reserved.
//

import Foundation
import UIKit

class Campos: UIViewController {
    
    var opcion: Int = 0
    var campo = ""
    
    @IBOutlet weak var btnCampo1: UIButton!
    @IBOutlet weak var btnCampo2: UIButton!
    @IBOutlet weak var btnCampo3: UIButton!
    @IBOutlet weak var btnCampo4: UIButton!
    @IBOutlet weak var btnCampo5: UIButton!
    @IBOutlet weak var btnCampo6: UIButton!
    
    @IBAction func btnCampo1(sender: UIButton) {
        opcion = 1
        campo = "Casa"
    }
    
    @IBAction func btnCampo2(sender: UIButton) {
        opcion = 2
        campo = "Animales"
    }
    
    @IBAction func btnCampo3(sender: UIButton) {
        opcion = 3
        campo = "Alimentos"
    }
    
    @IBAction func btnCampo4(sender: UIButton) {
        opcion = 4
        campo = "Ropa"
    }
    
    @IBAction func btnCampo5(sender: UIButton) {
        opcion = 5
        campo = "Partes del cuerpo"
    }
    
    @IBAction func btnCampo6(sender: UIButton) {
        opcion = 6
        campo = "Instrumentos"
    }
    
    override func viewDidLoad() {
        
    }

    @IBAction func regMenu(sender: AnyObject) {

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "volver") {
        }else {
            let DestViewController: Niveles = segue.destinationViewController as! Niveles
            if (opcion == 1) {
                DestViewController.LabelText = campo
            }
            if (opcion == 2) {
                DestViewController.LabelText = campo
            }
            if (opcion == 3) {
                DestViewController.LabelText = campo
            }
            if (opcion == 4) {
                DestViewController.LabelText = campo
            }
            if (opcion == 5) {
                DestViewController.LabelText = campo
            }
            if (opcion == 6) {
                DestViewController.LabelText = campo
            }
        }
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
}