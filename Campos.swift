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
    
    @IBOutlet weak var btnCampo1: UIButton!
    @IBOutlet weak var btnCampo2: UIButton!
    @IBOutlet weak var btnCampo3: UIButton!
    @IBOutlet weak var btnCampo4: UIButton!
    @IBOutlet weak var btnCampo5: UIButton!
    @IBOutlet weak var btnCampo6: UIButton!
    
    @IBAction func btnCampo1(sender: UIButton) {
        opcion = 1
    }
    
    @IBAction func btnCampo2(sender: UIButton) {
        opcion = 2
    }
    
    @IBAction func btnCampo3(sender: UIButton) {
        opcion = 3
    }
    
    @IBAction func btnCampo4(sender: UIButton) {
        opcion = 4
    }
    
    @IBAction func btnCampo5(sender: UIButton) {
        opcion = 5
    }
    
    @IBAction func btnCampo6(sender: UIButton) {
        let alert =  UIAlertController(title: "Campo no disponible",
            message: "Estamos trabajando para ti",
            preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "Aceptar",
            style: UIAlertActionStyle.Default,
            handler: nil))
        
        self.presentViewController(alert,
            animated: true,
            completion:nil
        )
        //opcion = 6
    }
    
    override func viewDidLoad() {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController: Niveles = segue.destinationViewController as! Niveles
        if (opcion == 1) {
            DestViewController.LabelText = btnCampo1.titleLabel!.text!
        }
        if (opcion == 2) {
            DestViewController.LabelText = btnCampo2.titleLabel!.text!
        }
        if (opcion == 3) {
            DestViewController.LabelText = btnCampo3.titleLabel!.text!
        }
        if (opcion == 4) {
            DestViewController.LabelText = btnCampo4.titleLabel!.text!
        }
        if (opcion == 5) {
            DestViewController.LabelText = btnCampo5.titleLabel!.text!
        }
        if (opcion == 6) {
            DestViewController.LabelText = btnCampo6.titleLabel!.text!
        }
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
}