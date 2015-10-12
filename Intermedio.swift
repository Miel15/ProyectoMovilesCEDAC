//
//  Intermedio.swift
//  CEDAC
//
//  Created by Sebastián Loredo on 11/10/15.
//  Copyright © 2015 Carlos Sebastián Loredo Gómez. All rights reserved.
//

import Foundation
import UIKit

class Intermedio: UIViewController {

    @IBOutlet weak var lblMensaje: UILabel!
    
    var LabelText = String()
    
    override func viewDidLoad() {
        
        
        lblMensaje.text = LabelText
    }

}