//
//  Instrucciones.swift
//  CEDAC
//
//  Created by Sebastián Loredo on 14/09/15.
//  Copyright (c) 2015 Carlos Sebastián Loredo Gómez. All rights reserved.
//

import UIKit

class Instrucciones: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        UIInterfaceOrientation.LandscapeRight.rawValue
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
}

