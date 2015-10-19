//
//  Niveles.swift
//  CEDAC
//
//  Created by Sebastián Loredo on 10/10/15.
//  Copyright © 2015 Carlos Sebastián Loredo Gómez. All rights reserved.
//

import Foundation
import UIKit

class Niveles: UIViewController {
    
    @IBOutlet weak var lblCampo: UILabel!
    var opcion:Int = 0
    
    var LabelText = String()
    
    override func viewDidLoad() {
            lblCampo.text = LabelText
    }
    
    @IBAction func btnNivel1(sender: AnyObject) {
        opcion = 1
    }
    
    @IBAction func btnNivel2(sender: AnyObject) {
        opcion = 2
    }
    
    @IBAction func btnNivel3(sender: AnyObject) {
        opcion = 3
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (opcion == 1){
            let DestViewController: Nivel1 = segue.destinationViewController as! Nivel1
                DestViewController.LabelText = lblCampo.text!
        }
        if (opcion == 2){
            let DestViewController: Nivel2 = segue.destinationViewController as! Nivel2
            DestViewController.LabelText = lblCampo.text!
        }
        if (opcion == 3){
            let DestViewController: Nivel3 = segue.destinationViewController as! Nivel3
            DestViewController.LabelText = lblCampo.text!
        }
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
}