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
        opcion = 6
    }
    
    override func viewDidLoad() {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController: Niveles = segue.destinationViewController as! Niveles
        if (opcion == 1) {
            var s: String {
                get{
                    return btnCampo1.titleLabel!.text!
                }
            }
            DestViewController.LabelText = s
        }
        if (opcion == 2) {
            var s: String {
                get{
                    return btnCampo2.titleLabel!.text!
                }
            }
            DestViewController.LabelText = s
        }
        if (opcion == 3) {
            var s: String {
                get{
                    return btnCampo3.titleLabel!.text!
                }
            }
            DestViewController.LabelText = s
        }
        if (opcion == 4) {
            var s: String {
                get{
                    return btnCampo4.titleLabel!.text!
                }
            }
            DestViewController.LabelText = s
        }
        if (opcion == 5) {
            var s: String {
                get{
                    return btnCampo5.titleLabel!.text!
                }
            }
            DestViewController.LabelText = s
        }
        if (opcion == 6) {
            var s: String {
                get{
                    return btnCampo6.titleLabel!.text!
                }
            }
            DestViewController.LabelText = s
        }
    }
}