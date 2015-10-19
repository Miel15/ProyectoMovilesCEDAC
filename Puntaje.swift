//
//  Niveles.swift
//  CEDAC
//
//  Created by Sebastián Loredo on 10/10/15.
//  Copyright © 2015 Carlos Sebastián Loredo Gómez. All rights reserved.
//

import Foundation
import UIKit

class Puntaje: UIViewController {
    
    @IBOutlet weak var lblPuntaje: UILabel!

    
    private func registrarNotificaciones(){
        //Para iniciar
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "iniciando", name: UIApplicationDidBecomeActiveNotification, object: nil)
        
        //Para terminar
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "terminando", name: UIApplicationWillResignActiveNotification, object: nil)
    }
    
    func iniciando(){
        let preferencias = NSUserDefaults.standardUserDefaults()
        preferencias.synchronize()
        if let strTitulo = preferencias.stringForKey("prefTitulo"){
            lblPuntaje.text = strTitulo
        }
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
}