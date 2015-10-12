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
    
    var LabelText = String()
    
    override func viewDidLoad() {
            lblCampo.text = LabelText
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController: Nivel1 = segue.destinationViewController as! Nivel1
            var s: String {
                get{
                    return lblCampo.text!
                }
            }
            DestViewController.LabelText = s
    }
}