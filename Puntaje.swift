//
//  Puntaje.swift
//  CEDAC
//
//  Created by Sebastián Loredo on 10/10/15.
//  Copyright © 2015 Carlos Sebastián Loredo Gómez. All rights reserved.
//

import Foundation
import UIKit

class Puntaje: UIViewController {
    
    @IBOutlet weak var lblPuntaje: UILabel!
    var LabelText = String()
    
    @IBOutlet weak var aciertos1: UILabel!
    @IBOutlet weak var errores1: UILabel!
    @IBOutlet weak var aciertos2: UILabel!
    @IBOutlet weak var errores2: UILabel!
    @IBOutlet weak var aciertos3: UILabel!
    @IBOutlet weak var errores3: UILabel!
    
    @IBOutlet weak var aciertos11: UILabel!
    @IBOutlet weak var aciertos12: UILabel!
    @IBOutlet weak var aciertos13: UILabel!
    @IBOutlet weak var errores11: UILabel!
    @IBOutlet weak var errores12: UILabel!
    @IBOutlet weak var errores13: UILabel!
    
    @IBOutlet weak var aciertos21: UILabel!
    @IBOutlet weak var aciertos22: UILabel!
    @IBOutlet weak var aciertos23: UILabel!
    @IBOutlet weak var errores21: UILabel!
    @IBOutlet weak var errores22: UILabel!
    @IBOutlet weak var errores23: UILabel!
    
    @IBOutlet weak var aciertos31: UILabel!
    @IBOutlet weak var aciertos32: UILabel!
    @IBOutlet weak var aciertos33: UILabel!
    @IBOutlet weak var errores31: UILabel!
    @IBOutlet weak var errores32: UILabel!
    @IBOutlet weak var errores33: UILabel!
    
    @IBOutlet weak var aciertos41: UILabel!
    @IBOutlet weak var aciertos42: UILabel!
    @IBOutlet weak var aciertos43: UILabel!
    @IBOutlet weak var errores41: UILabel!
    @IBOutlet weak var errores42: UILabel!
    @IBOutlet weak var errores43: UILabel!
    
    @IBOutlet weak var aciertos51: UILabel!
    @IBOutlet weak var aciertos52: UILabel!
    @IBOutlet weak var aciertos53: UILabel!
    @IBOutlet weak var errores51: UILabel!
    @IBOutlet weak var errores52: UILabel!
    @IBOutlet weak var errores53: UILabel!
    
    @IBOutlet weak var anterior1: UIButton!
    @IBOutlet weak var anterior2: UIButton!
    @IBOutlet weak var anterior3: UIButton!
    @IBOutlet weak var anterior4: UIButton!
    @IBOutlet weak var anterior5: UIButton!
    @IBOutlet weak var siguiente1: UIButton!
    @IBOutlet weak var siguiente2: UIButton!
    @IBOutlet weak var siguiente3: UIButton!
    @IBOutlet weak var siguiente4: UIButton!
    @IBOutlet weak var siguiente5: UIButton!
    
    @IBOutlet weak var campo: UILabel!
    
    private func registrarNotificaciones() {
        //Para iniciar
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "iniciando", name: UIApplicationDidBecomeActiveNotification, object: nil)
        //Para terminar
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "terminando", name: UIApplicationWillResignActiveNotification, object: nil)
    }
    
    func iniciando() {
        print("Iniciando")
        let preferencias = NSUserDefaults.standardUserDefaults()
        preferencias.synchronize()
        //Recuperar los datos
        //Aciertos
        if let strTitulo = preferencias.stringForKey("prefaciertos1") {
            aciertos1.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("prefaciertos27") {
            aciertos2.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("prefaciertos31") {
            aciertos3.text = strTitulo
        }
        
        if let strTitulo = preferencias.stringForKey("prefaciertos2") {
            aciertos11.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("prefaciertos28") {
            aciertos12.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("prefaciertos32") {
            aciertos13.text = strTitulo
        }
        
        if let strTitulo = preferencias.stringForKey("prefaciertos3") {
            aciertos21.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("prefaciertos29") {
            aciertos22.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("prefaciertos33") {
            aciertos23.text = strTitulo
        }
        
        if let strTitulo = preferencias.stringForKey("prefaciertos4") {
            aciertos31.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("prefaciertos30") {
            aciertos32.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("prefaciertos34") {
            aciertos33.text = strTitulo
        }
        
        if let strTitulo = preferencias.stringForKey("prefaciertos5") {
            aciertos41.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("prefaciertos31") {
            aciertos42.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("prefaciertos35") {
            aciertos43.text = strTitulo
        }
        
        if let strTitulo = preferencias.stringForKey("prefaciertos6") {
            aciertos51.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("prefaciertos32") {
            aciertos52.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("prefaciertos36") {
            aciertos53.text = strTitulo
        }
        
        
        //Errores
        if let strTitulo = preferencias.stringForKey("preferrores1") {
            errores1.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("preferrores21") {
            errores2.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("preferrores31") {
            errores3.text = strTitulo
        }
        
        if let strTitulo = preferencias.stringForKey("preferrores2") {
            errores11.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("preferrores22") {
            errores12.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("preferrores32") {
            errores13.text = strTitulo
        }
        
        if let strTitulo = preferencias.stringForKey("preferrores3") {
            errores21.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("preferrores23") {
            errores22.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("preferrores33") {
            errores23.text = strTitulo
        }
        
        if let strTitulo = preferencias.stringForKey("preferrores4") {
            errores31.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("preferrores24") {
            errores32.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("preferrores34") {
            errores33.text = strTitulo
        }
        
        if let strTitulo = preferencias.stringForKey("preferrores5") {
            errores41.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("preferrores25") {
            errores42.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("preferrores35") {
            errores43.text = strTitulo
        }
        
        if let strTitulo = preferencias.stringForKey("preferrores6") {
            errores51.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("preferrores26") {
            errores52.text = strTitulo
        }
        if let strTitulo = preferencias.stringForKey("preferrores36") {
            errores53.text = strTitulo
        }
    }
    
    @IBAction func btnSiguiente1(sender: AnyObject) {
        errores11.hidden = false
        errores12.hidden = false
        errores13.hidden = false
        aciertos11.hidden = false
        aciertos12.hidden = false
        aciertos13.hidden = false
        
        errores1.hidden = true
        errores2.hidden = true
        errores3.hidden = true
        aciertos1.hidden = true
        aciertos2.hidden = true
        aciertos3.hidden = true
        anterior1.hidden = false
        
        siguiente1.hidden = true
        siguiente2.hidden = false
        siguiente3.hidden = true
        siguiente4.hidden = true
        siguiente5.hidden = true

        
        campo.text = "Campo: Animales"
    }
    
    @IBAction func anterior1(sender: AnyObject) {
        errores1.hidden = false
        errores2.hidden = false
        errores3.hidden = false
        aciertos1.hidden = false
        aciertos2.hidden = false
        aciertos3.hidden = false
        anterior1.hidden = true
        
        siguiente1.hidden = false
        siguiente3.hidden = true
        siguiente4.hidden = true
        siguiente5.hidden = true
        
        errores11.hidden = true
        errores12.hidden = true
        errores13.hidden = true
        aciertos11.hidden = true
        aciertos12.hidden = true
        aciertos13.hidden = true
        siguiente2.hidden = true
        
        campo.text = "Campo: Casa"
    }
    
    @IBAction func siguiente2(sender: AnyObject) {
        errores11.hidden = true
        errores12.hidden = true
        errores13.hidden = true
        aciertos11.hidden = true
        aciertos12.hidden = true
        aciertos13.hidden = true
        anterior2.hidden = false
        anterior1.hidden = true
        
        errores21.hidden = false
        errores22.hidden = false
        errores23.hidden = false
        aciertos21.hidden = false
        aciertos22.hidden = false
        aciertos23.hidden = false

        siguiente1.hidden = true
        siguiente2.hidden = true
        siguiente3.hidden = false
        siguiente4.hidden = true
        siguiente5.hidden = true

        
        campo.text = "Campo: Alimentos"
    }
    
    @IBAction func anterior2(sender: AnyObject) {
        errores11.hidden = false
        errores12.hidden = false
        errores13.hidden = false
        aciertos11.hidden = false
        aciertos12.hidden = false
        aciertos13.hidden = false
        siguiente2.hidden = false
        anterior2.hidden = true
        anterior1.hidden = false
        
        errores21.hidden = true
        errores22.hidden = true
        errores23.hidden = true
        aciertos21.hidden = true
        aciertos22.hidden = true
        aciertos23.hidden = true
        siguiente3.hidden = true
        
        campo.text = "Campo: Animales"
    }
    
    @IBAction func siguiente3(sender: AnyObject) {
        errores21.hidden = true
        errores22.hidden = true
        errores23.hidden = true
        aciertos21.hidden = true
        aciertos22.hidden = true
        aciertos23.hidden = true
        anterior3.hidden = false
        anterior2.hidden = true

        siguiente1.hidden = true
        siguiente2.hidden = true
        siguiente5.hidden = true
        siguiente3.hidden = true
        siguiente4.hidden = false
        
        errores31.hidden = false
        errores32.hidden = false
        errores33.hidden = false
        aciertos31.hidden = false
        aciertos32.hidden = false
        aciertos33.hidden = false
        
        campo.text = "Campo: Ropa"

    }
    
    @IBAction func anterior3(sender: AnyObject) {
        errores21.hidden = false
        errores22.hidden = false
        errores23.hidden = false
        aciertos21.hidden = false
        aciertos22.hidden = false
        aciertos23.hidden = false
        
        siguiente2.hidden = true
        siguiente3.hidden = false
        siguiente1.hidden = true
        siguiente4.hidden = true
        siguiente5.hidden = true
        
        anterior3.hidden = true
        anterior2.hidden = false
        errores31.hidden = true
        errores32.hidden = true
        errores33.hidden = true
        aciertos31.hidden = true
        aciertos32.hidden = true
        aciertos33.hidden = true
        
        campo.text = "Campo: Alimentos"
    }
    
    @IBAction func siguiente4(sender: AnyObject) {
        errores31.hidden = true
        errores32.hidden = true
        errores33.hidden = true
        aciertos31.hidden = true
        aciertos32.hidden = true
        aciertos33.hidden = true
        anterior3.hidden = true
        anterior4.hidden = false
        
        errores41.hidden = false
        errores42.hidden = false
        errores43.hidden = false
        aciertos41.hidden = false
        aciertos42.hidden = false
        aciertos43.hidden = false
        campo.text = "Campo: Partes del cuerpo"

        siguiente4.hidden = true
        siguiente5.hidden = false
        siguiente1.hidden = true
        siguiente2.hidden = true
        siguiente3.hidden = true


    }
    
    @IBAction func anterior4(sender: AnyObject) {
        errores31.hidden = false
        errores32.hidden = false
        errores33.hidden = false
        aciertos31.hidden = false
        aciertos32.hidden = false
        aciertos33.hidden = false
        
        siguiente1.hidden = true
        siguiente2.hidden = true
        siguiente3.hidden = true
        siguiente4.hidden = false
        siguiente5.hidden = true

        anterior3.hidden = false
        anterior4.hidden = true
        
        errores41.hidden = true
        errores42.hidden = true
        errores43.hidden = true
        aciertos41.hidden = true
        aciertos42.hidden = true
        aciertos43.hidden = true
        
        campo.text = "Campo: Ropa"
    }
    
    @IBAction func siguiente5(sender: AnyObject) {
        siguiente1.hidden = true
        siguiente2.hidden = true
        siguiente3.hidden = true
        siguiente4.hidden = true
        siguiente5.hidden = true

        errores41.hidden = true
        errores42.hidden = true
        errores43.hidden = true
        aciertos41.hidden = true
        aciertos42.hidden = true
        aciertos43.hidden = true
        anterior4.hidden = true
        
        aciertos51.hidden = false
        aciertos52.hidden = false
        aciertos53.hidden = false
        errores51.hidden = false
        errores52.hidden = false
        errores53.hidden = false
        anterior5.hidden = false
        
        campo.text = "Campo: Instrumentos musicales"
    }
    
    @IBAction func anterior5(sender: AnyObject) {
        aciertos51.hidden = true
        aciertos52.hidden = true
        aciertos53.hidden = true
        errores51.hidden = true
        errores52.hidden = true
        errores53.hidden = true
        anterior4.hidden = false
        
        siguiente4.hidden = false
        siguiente5.hidden = true
        siguiente1.hidden = true
        siguiente2.hidden = true
        siguiente3.hidden = true
        
        anterior5.hidden = true
        
        errores41.hidden = false
        errores42.hidden = false
        errores43.hidden = false
        aciertos41.hidden = false
        aciertos42.hidden = false
        aciertos43.hidden = false
        campo.text = "Campo: Partes del cuerpo"
    }
    
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iniciando()
    }
}