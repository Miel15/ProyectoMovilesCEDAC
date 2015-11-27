//
//  Registrarse.swift
//  CEDAC
//
//  Created by Sebastián Loredo on 10/10/15.
//  Copyright © 2015 Carlos Sebastián Loredo Gómez. All rights reserved.
//

import Foundation
import UIKit

class Registrarse: UIViewController {
    
    @IBOutlet weak var mujer: UIButton!
    @IBOutlet weak var hombre: UIButton!
    @IBOutlet weak var tfNombre: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func shouldAutorotate() -> Bool {
        return false
    }
    
    @IBAction func mujer(sender: AnyObject) {
        mujer.backgroundColor = UIColor.orangeColor()
    }
    
    @IBAction func hombre(sender: AnyObject) {
        hombre.backgroundColor = UIColor.blueColor()
    }
    
}