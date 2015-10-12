//
//  Nivel1.swift
//  CEDAC
//
//  Created by Sebastián Loredo on 10/10/15.
//  Copyright © 2015 Carlos Sebastián Loredo Gómez. All rights reserved.
//

import Foundation
import UIKit

class Nivel1: UIViewController {

    var a:Int = 0
    var b:Int = 0
    var c:Int = 0
    var d:Int = 0
    var puntaje:Int = 0
    var errores:Int = 0
    var vidas:Int = 5
    
    var arrOpciones:[Int] = []
    
    var LabelText = String()

    var dicBanderas = ["":""]
    
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var lblPuntaje: UILabel!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    @IBOutlet weak var lblPalabra: UILabel!
    @IBOutlet weak var lblVidas: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblVidas.text = String(vidas)
        if LabelText == "Campo 1" {
            dicBanderas = ["Alemania" : "al.jpg", "Estados Unidos" : "EUA.jpg", "Francia" : "francia.jpg", "México" : "mex.png", "Vietnam" : "vi.png", "Argentina" : "ar.png", "Afganistán" : "af.png", "Reino Unido" : "reino.png", "Ucrania" : "uc.png", "Palaos" : "palaos.png", "Serbia" : "serbia.png", "Suecia" : "suecia.png", "Togo" : "togo.png", "Grecia" : "grecia.png", "Canadá" : "can.png"]
        }
        if LabelText == "Campo 2" {
            dicBanderas = ["Buey" : "buey.jpg", "Caballo" : "caballo.jpg", "Canario" : "canario.jpg", "Elefante" : "elefante.jpg", "Gato" : "gato.jpg", "Jirafa" : "jirafa.jpg", "Lobo" : "lobo.jpeg", "Mono" : "mono.jpg", "Oso" : "oso.jpg", "Pato" : "pato.jpg", "Perico" : "perico.jpg", "Perro" : "perro.jpg", "Rana" : "rana.jpg", "Tigre" : "tigre.jpg", "Zebra" : "zebra.jpg"]
        }
        if LabelText == "Campo 3" {
            print("Campo 3 Niveles")
        }
        if LabelText == "Campo 4" {
            print("Campo 4 Niveles")
        }
        if LabelText == "Campo 5" {
            print("Campo 5 Niveles")
        }
        
        escoger()
        
    }
    
    func tap() {
        let tapGestureRecognizer = UITapGestureRecognizer(target:self, action:Selector("imageTapped:"))
        imgView1.addGestureRecognizer(tapGestureRecognizer)
        imgView1.userInteractionEnabled = true
        
        let tapGestureRecognizer1 = UITapGestureRecognizer(target:self, action:Selector("imageTapped1:"))
        imgView2.addGestureRecognizer(tapGestureRecognizer1)
        imgView2.userInteractionEnabled = true
        
        let tapGestureRecognizer2 = UITapGestureRecognizer(target:self, action:Selector("imageTapped2:"))
        imgView3.addGestureRecognizer(tapGestureRecognizer2)
        imgView3.userInteractionEnabled = true
    }
    
    func imageTapped(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[0]] == lblPalabra.text {
            puntaje+=1
            let alert =  UIAlertController(title: "Respuesta correcta",
                message: "",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "Aceptar",
                style: UIAlertActionStyle.Default,
                handler: nil))
            
            self.presentViewController(alert,
                animated: true,
                completion:nil
            )
            lblPuntaje.text = String(puntaje)
            escoger()
        }else{
            errores = errores + 1
            let alert =  UIAlertController(title: "Respuesta incorrecta",
                message: "Inténtalo de nuevo",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "Aceptar",
                style: UIAlertActionStyle.Default,
                handler: nil))
            
            self.presentViewController(alert,
                animated: true,
                completion:nil
            )
            vidas = vidas - 1
            lblVidas.text = String(vidas)
        }
    }
    
    func imageTapped1(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[1]] == lblPalabra.text {
            puntaje+=1
            let alert =  UIAlertController(title: "Respuesta correcta",
                message: "",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "Aceptar",
                style: UIAlertActionStyle.Default,
                handler: nil))
            
            self.presentViewController(alert,
                animated: true,
                completion:nil
            )
            lblPuntaje.text = String(puntaje)
            escoger()
        }else{
            errores = errores + 1
            let alert =  UIAlertController(title: "Respuesta incorrecta",
                message: "Inténtalo de nuevo",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "Aceptar",
                style: UIAlertActionStyle.Default,
                handler: nil))
            
            self.presentViewController(alert,
                animated: true,
                completion:nil
            )
            vidas = vidas - 1
            lblVidas.text = String(vidas)
        }
    }
    
    func imageTapped2(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[2]] == lblPalabra.text {
            puntaje+=1
            let alert =  UIAlertController(title: "Respuesta correcta",
                message: "",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "Aceptar",
                style: UIAlertActionStyle.Default,
                handler: nil))
            
            self.presentViewController(alert,
                animated: true,
                completion:nil
            )
            lblPuntaje.text = String(puntaje)
            escoger()
        }else{
            errores = errores + 1
            let alert =  UIAlertController(title: "Respuesta incorrecta",
                message: "Inténtalo de nuevo",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "Aceptar",
                style: UIAlertActionStyle.Default,
                handler: nil))
            
            self.presentViewController(alert,
                animated: true,
                completion:nil
            )
            vidas = vidas - 1
            lblVidas.text = String(vidas)
        }
    }
    
    func escoger() {
        if puntaje == 5 {
           let vc = ViewController(nibName: "Intermedio", bundle: nil)
           navigationController?.pushViewController(vc, animated: true)
        }
        
        arrOpciones.removeAll()
        a = 0
        b = 0
        c = 0
        lblPuntaje.text = String(puntaje)
        if d == 0 {
            a = randomNumber(0...4)
            b = randomNumber(5...9)
            c = randomNumber(10...14)
            d = d + 1
        } else if d == 1 {
            c = randomNumber(0...4)
            a = randomNumber(5...9)
            b = randomNumber(10...14)
            d = d + 1
        } else if d == 2 {
            b = randomNumber(0...4)
            c = randomNumber(5...9)
            a = randomNumber(10...14)
            d = 0
        }

        arrOpciones.append(a)
        arrOpciones.append(b)
        arrOpciones.append(c)

        imgView1.image = UIImage(named: Array(dicBanderas.values)[a])
        imgView2.image = UIImage(named: Array(dicBanderas.values)[b])
        imgView3.image = UIImage(named: Array(dicBanderas.values)[c])
        
        let j:Int = Int(arc4random())%arrOpciones.count
        var t:Int = arrOpciones[j]
        lblPalabra.text = Array(dicBanderas.keys)[t]

        tap()
    }
    
    func randomNumber(range: Range<Int> = 1...6) -> Int {
        let min = range.startIndex
        let max = range.endIndex
        return Int(arc4random_uniform(UInt32(max - min))) + min
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController: Intermedio = segue.destinationViewController as! Intermedio
        if puntaje == 5 {
            print("Jola")
            DestViewController.LabelText = "Nivel superado"
        }
    }
}