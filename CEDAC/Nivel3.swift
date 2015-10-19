//
//  Nivel3.swift
//  CEDAC
//
//  Created by Sebastián Loredo on 10/10/15.
//  Copyright © 2015 Carlos Sebastián Loredo Gómez. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class Nivel3: UIViewController {
    
    var num1:Int = 0
    var num2:Int = 0
    var num3:Int = 0
    var num4:Int = 0
    var num5:Int = 0
    var num6:Int = 0
    var num7:Int = 0
    var num8:Int = 0
    var entrar = 0
    var d:Int = 0
    var puntaje:Int = 0
    var errores:Int = 0
    var vidas:Int = 1
    var arrOpciones:[Int] = []
    var LabelText = String()
    var dicBanderas = ["":""]
    
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    @IBOutlet weak var imgView4: UIImageView!
    @IBOutlet weak var imgView5: UIImageView!
    @IBOutlet weak var imgView6: UIImageView!
    @IBOutlet weak var imgView7: UIImageView!
    @IBOutlet weak var imgView8: UIImageView!
    
    @IBOutlet weak var lblAudio: UIButton!
    @IBOutlet weak var lblPuntaje: UILabel!
    @IBOutlet weak var lblVidas: UILabel!
    @IBOutlet weak var lblPalabra: UILabel!
    @IBOutlet weak var viewGanaste: UIView!
    @IBOutlet weak var viewPerdiste: UIView!
    
    private var player:AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblVidas.text = String(vidas)
        if LabelText == "Casa" {
            //35 elementos
            dicBanderas = ["Baño" : "banio.jpg", "Bote de basura" : "basura.jpg", "Closet" : "closet.jpeg", "Cochera" : "cochera.jpg", "Cocina" : "cocina.jpg", "Comedor" : "comedor.jpg", "Copa" : "copas.jpg", "Cuchara" : "cuchara.jpg", "Cuchillo" : "cuchillo.jpg", "Escalera" : "escalera.jpg", "Espejo" : "espejo.jpg", "Estufa" : "estufa.jpg", "Impresora" : "impresora.jpg", "Lámpara" : "lampara.jpg", "Laptop" : "laptop.jpg", "Lavabo" : "lavabo.jpeg", "Lavadora" : "lavadora.jpg", "Libro" : "libros.jpg", "Maceta" : "maceta.jpg", "Mesa" : "mesa.jpg", "Microondas" : "microondas.jpg", "Puerta" : "puerta.jpg", "Recamara" : "recamara.jpg", "Refrigerador" : "refrigerador.jpg", "Regadera" : "regadera.jpg", "Reloj" : "reloj.jpg", "Sala" : "sala.jpg", "Sartén" : "sarten.jpg", "Silla" : "silla.jpg", "Sillón" : "sillon.jpg", "Teléfono" : "telefono.jpg", "Tenedor" : "tenedor.jpg", "Television" : "television.jpg", "Tocador" : "tocador.jpg", "Vaso" : "vaso.jpg"]
        }
        if LabelText == "Animales" {
            //36 elementos
            dicBanderas = ["Ardilla" : "ardilla.jpg", "Avestruz" : "avestruz.jpg", "Borrego Cimarrón" : "borrego.jpg", "Buey" : "buey.jpg", "Búho" : "buho.jpg", "Caballo" : "caballo.jpg", "Canario" : "canario.jpg", "Cebra" : "cebra.jpg", "Cisne" : "cisne.jpg", "Elefante" : "elefante.jpg", "Gato" : "gato.jpg", "Iguana" : "iguana.jpg", "Jirafa" : "jirafa.jpg", "Koala" : "koala.jpg", "León" : "leon.jpg", "Leopardo" : "leopardo.jpg", "Lobo" : "lobo.jpeg", "Mapache" : "mapache.jpg", "Mariposa" : "mariposa.jpg", "Mono" : "mono.jpg", "Oso" : "oso.jpg", "Pato" : "pato.jpg", "Pavo Real" : "pavo_real.jpg", "Perico" : "perico.jpg", "Perro" : "perro.jpg", "Pez" : "pez.jpg", "Pingüino" : "pinguino.jpg", "Pollo" : "pollo.jpg", "Rana" : "rana.jpg", "Rinoceronte" : "rinocerontes.jpg", "Tiburón" : "tiburon.jpg", "Tigre" : "tigre.jpg", "Toro" : "toro.jpg", "Tortuga" : "tortuga.jpg", "Vaca" : "vaca.jpg", "Venado" : "venado.jpg"]
        }
        if LabelText == "Alimentos" {
            //30 elementos
            dicBanderas = ["Aguacate" : "aguacate.jpg", "Café" : "cafe.jpg", "Arroz" : "arroz.jpg", "Cereal" : "cereal.jpg", "Cebolla" : "cebolla.jpg", "Coco" : "coco.jpg", "Fresa" : "fresa.jpg", "Chile" : "chiles.jpg", "Manzana" : "manzana.jpg", "Pollo" : "pollo2.jpg", "Frijoles" : "frijoles.jpg", "Helado" : "helado.jpg", "Pescado" : "pescado.jpg", "Queso" : "queso.jpg", "Piña" : "pinia.jpg", "Yogur" : "yogur.jpg", "Sandía" : "sandia.jpg", "Uvas" : "uvas.jpg", "Leche" : "leche.jpg", "Salchicha" : "salchichas.jpg", "Zanahoria" : "zanahorias.jpg", "Naranja" : "naranjas.jpg", "Pan" : "pan.jpg", "Plátano" : "platano.jpg", "Miel" : "miel.jpg", "Jamón"  : "jamon.jpg", "Jitomate" : "jitomate.jpg", "Huevo" : "huevo.jpg", "Carne" : "carne.jpg", "Chocolate" : "chocolate.jpg"]
        }
        if LabelText == "Ropa" {
            //30 elementos
            dicBanderas = ["Abrigo" : "abrigo.jpg", "Anillo" : "anillo.jpg", "Blusa" : "blusa.jpg", "Botas" : "botas2.jpg", "Bufanda" : "bufanda.jpg", "Calcetines" : "calcetines.jpg", "Camisa" : "camisa.jpg", "Camiseta" : "camiseta.jpg", "Chaleco" : "chaleco.jpg", "Chamarra" : "chamarra.jpg", "Chanclas" : "chanclas.jpg", "Cinturón" : "cinturon.jpg", "Collar" : "collar.jpg", "Corbata" : "corbata.jpg", "Falda" : "falda.jpg", "Gorra" : "gorra.jpg", "Guantes" : "guantes.jpg", "Lentes" : "lentes.jpg", "Pantalón" : "pantalon.jpg", "Pantuflas" : "pantuflas.jpg", "Pijama" : "pijama.jpg", "Reloj de mano" : "relojmano.jpg", "Sombrero" : "sombrero.jpg", "Sudadera" : "sudadera.jpg", "Suéter" : "sueter.jpg", "Tacones" : "tacones.png", "Tenis" : "tenis.jpg", "Traje" : "traje.jpg", "Vestido" : "vestido.jpg", "Zapatos" : "zapatos.jpg"]
        }
        if LabelText == "Partes del cuerpo" {
            //18 elementos
            dicBanderas = ["Brazo" : "brazo.png", "Boca" : "boca.jpg", "Cabello" : "cabello.jpg", "Cuello" : "cuello.jpg", "Codo" : "codo.jpg", "Dientes" : "dientes.jpg", "Dedo" : "dedo.jpg", "Cabeza" : "cabeza.jpg", "Hombro" : "hombro.jpg", "Oreja" : "oreja.jpg", "Nariz" : "nariz.jpg", "Pie" : "pie.jpg", "Torso" : "torso.jpg", "Piernas" : "piernas.jpg", "Lengua" : "lengua.jpg", "Ojo" : "ojo.jpg", "Mano" : "mano.jpg", "Ceja" : "ceja.jpg"]
        }
        
        escoger()
        
    }
    
    private func reproducirMP3(a:String) {
        if entrar == 0{
            
            if let url = NSBundle.mainBundle().URLForResource(a, withExtension: "m4a") {
                if let player = try? AVAudioPlayer(contentsOfURL: url) {
                    self.player = player
                    self.player.prepareToPlay()
                }
                
                if self.player.playing {
                    self.player.stop()
                }
                self.player.play()
                
            } else {
                lblAudio.setTitle("Audio no disponible", forState: UIControlState.Normal)
                lblAudio.enabled = false
            }
        }
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
        
        let tapGestureRecognizer3 = UITapGestureRecognizer(target:self, action:Selector("imageTapped3:"))
        imgView4.addGestureRecognizer(tapGestureRecognizer3)
        imgView4.userInteractionEnabled = true
        
        let tapGestureRecognizer4 = UITapGestureRecognizer(target:self, action:Selector("imageTapped4:"))
        imgView5.addGestureRecognizer(tapGestureRecognizer4)
        imgView5.userInteractionEnabled = true
        
        let tapGestureRecognizer5 = UITapGestureRecognizer(target:self, action:Selector("imageTapped5:"))
        imgView6.addGestureRecognizer(tapGestureRecognizer5)
        imgView6.userInteractionEnabled = true
        
        let tapGestureRecognizer6 = UITapGestureRecognizer(target:self, action:Selector("imageTapped6:"))
        imgView7.addGestureRecognizer(tapGestureRecognizer6)
        imgView7.userInteractionEnabled = true
        
        let tapGestureRecognizer7 = UITapGestureRecognizer(target:self, action:Selector("imageTapped7:"))
        imgView8.addGestureRecognizer(tapGestureRecognizer7)
        imgView8.userInteractionEnabled = true
    }
    
    func imageTapped(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[0]] == lblPalabra.text {
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 0){
                viewPerdiste.hidden = false;
            } else {
                respuestaIncorrecta()
            }
        }
    }
    
    func imageTapped1(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[1]] == lblPalabra.text {
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 0){
                viewPerdiste.hidden = false;
            } else {
                respuestaIncorrecta()
            }
        }
    }
    
    func imageTapped2(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[2]] == lblPalabra.text {
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 0){
                viewPerdiste.hidden = false;
            } else {
                respuestaIncorrecta()
            }
        }
    }
    
    func imageTapped3(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[3]] == lblPalabra.text {
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 0){
                viewPerdiste.hidden = false;
            } else {
                respuestaIncorrecta()
            }
        }
    }
    
    func imageTapped4(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[4]] == lblPalabra.text {
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 0){
                viewPerdiste.hidden = false;
            } else {
                respuestaIncorrecta()
            }
        }
    }
    
    func imageTapped5(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[5]] == lblPalabra.text {
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 0){
                viewPerdiste.hidden = false;
            } else {
                respuestaIncorrecta()
            }
        }
    }
    
    func imageTapped6(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[6]] == lblPalabra.text {
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 0){
                viewPerdiste.hidden = false;
            } else {
                respuestaIncorrecta()
            }
        }
    }
    
    func imageTapped7(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[7]] == lblPalabra.text {
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 0){
                viewPerdiste.hidden = false;
            } else {
                respuestaIncorrecta()
            }
        }
    }
    
    func respuestaCorrecta(){
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
    }
    
    func respuestaIncorrecta(){
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
    
    func escoger() {
        if puntaje == 5 {
            entrar = 1
            viewGanaste.hidden = false
        }
        
        arrOpciones.removeAll()
        num1 = 0
        num2 = 0
        num3 = 0
        num4 = 0
        num5 = 0
        
        lblPuntaje.text = String(puntaje)
        if LabelText == "Casa" {
            if d == 0 {
                num1 = randomNumber(0...3)
                num2 = randomNumber(4...7)
                num3 = randomNumber(8...11)
                num4 = randomNumber(12...15)
                num5 = randomNumber(16...19)
                num6 = randomNumber(20...23)
                num7 = randomNumber(24...27)
                num8 = randomNumber(28...34)
                d = d + 1
            } else if d == 1 {
                num5 = randomNumber(0...3)
                num6 = randomNumber(4...7)
                num7 = randomNumber(8...11)
                num8 = randomNumber(12...15)
                num1 = randomNumber(16...19)
                num2 = randomNumber(20...23)
                num3 = randomNumber(24...27)
                num4 = randomNumber(28...34)
                d = d + 1
            } else if d == 2 {
                num8 = randomNumber(0...3)
                num7 = randomNumber(4...7)
                num6 = randomNumber(8...11)
                num5 = randomNumber(12...15)
                num4 = randomNumber(16...19)
                num3 = randomNumber(20...23)
                num2 = randomNumber(24...27)
                num1 = randomNumber(28...34)
                d = 0
            }
        }
        if LabelText == "Animales" {
            if d == 0 {
                num1 = randomNumber(0...3)
                num2 = randomNumber(4...7)
                num3 = randomNumber(8...11)
                num4 = randomNumber(12...16)
                num5 = randomNumber(17...21)
                num6 = randomNumber(22...26)
                num7 = randomNumber(27...31)
                num8 = randomNumber(32...35)
                d = d + 1
            } else if d == 1 {
                num5 = randomNumber(0...3)
                num6 = randomNumber(4...7)
                num7 = randomNumber(8...11)
                num8 = randomNumber(12...16)
                num1 = randomNumber(17...21)
                num2 = randomNumber(22...26)
                num3 = randomNumber(27...31)
                num4 = randomNumber(32...35)
                d = d + 1
            } else if d == 2 {
                num8 = randomNumber(0...3)
                num7 = randomNumber(4...7)
                num6 = randomNumber(8...11)
                num5 = randomNumber(12...16)
                num4 = randomNumber(17...21)
                num3 = randomNumber(22...26)
                num2 = randomNumber(27...31)
                num1 = randomNumber(32...35)
                d = 0
            }
        }
        if LabelText == "Alimentos" {
            if d == 0 {
                num1 = randomNumber(0...3)
                num2 = randomNumber(4...7)
                num3 = randomNumber(8...11)
                num4 = randomNumber(12...15)
                num5 = randomNumber(16...19)
                num6 = randomNumber(20...22)
                num7 = randomNumber(23...25)
                num8 = randomNumber(26...29)
                d = d + 1
            } else if d == 1 {
                num5 = randomNumber(0...3)
                num6 = randomNumber(4...7)
                num7 = randomNumber(8...11)
                num8 = randomNumber(12...15)
                num1 = randomNumber(16...19)
                num2 = randomNumber(20...22)
                num3 = randomNumber(23...25)
                num4 = randomNumber(26...29)
                d = d + 1
            } else if d == 2 {
                num8 = randomNumber(0...3)
                num7 = randomNumber(4...7)
                num6 = randomNumber(8...11)
                num5 = randomNumber(12...15)
                num4 = randomNumber(16...19)
                num3 = randomNumber(20...22)
                num2 = randomNumber(23...25)
                num1 = randomNumber(26...29)
                d = 0
            }
        }
        if LabelText == "Ropa" {
            if d == 0 {
                num1 = randomNumber(0...3)
                num2 = randomNumber(4...7)
                num3 = randomNumber(8...11)
                num4 = randomNumber(12...15)
                num5 = randomNumber(16...19)
                num6 = randomNumber(20...22)
                num7 = randomNumber(23...25)
                num8 = randomNumber(26...29)
                d = d + 1
            } else if d == 1 {
                num5 = randomNumber(0...3)
                num6 = randomNumber(4...7)
                num7 = randomNumber(8...11)
                num8 = randomNumber(12...15)
                num1 = randomNumber(16...19)
                num2 = randomNumber(20...22)
                num3 = randomNumber(23...25)
                num4 = randomNumber(26...29)
                d = d + 1
            } else if d == 2 {
                num8 = randomNumber(0...3)
                num7 = randomNumber(4...7)
                num6 = randomNumber(8...11)
                num5 = randomNumber(12...15)
                num4 = randomNumber(16...19)
                num3 = randomNumber(20...22)
                num2 = randomNumber(23...25)
                num1 = randomNumber(26...29)
                d = 0
            }
        }
        if LabelText == "Partes del cuerpo" {
            if d == 0 {
                num1 = randomNumber(0...1)
                num2 = randomNumber(2...3)
                num3 = randomNumber(4...5)
                num4 = randomNumber(6...7)
                num5 = randomNumber(8...9)
                num6 = randomNumber(10...11)
                num7 = randomNumber(12...13)
                num8 = randomNumber(14...17)
                d = d + 1
            } else if d == 1 {
                num5 = randomNumber(0...1)
                num6 = randomNumber(2...3)
                num7 = randomNumber(4...5)
                num8 = randomNumber(6...7)
                num1 = randomNumber(8...9)
                num2 = randomNumber(10...11)
                num3 = randomNumber(12...13)
                num4 = randomNumber(14...17)
                d = d + 1
            } else if d == 2 {
                num8 = randomNumber(0...1)
                num7 = randomNumber(2...3)
                num6 = randomNumber(4...5)
                num5 = randomNumber(6...7)
                num4 = randomNumber(8...9)
                num3 = randomNumber(10...11)
                num2 = randomNumber(12...13)
                num1 = randomNumber(14...17)
                d = 0
            }
        }
        arrOpciones.append(num1)
        arrOpciones.append(num2)
        arrOpciones.append(num3)
        arrOpciones.append(num4)
        arrOpciones.append(num5)
        arrOpciones.append(num6)
        arrOpciones.append(num7)
        arrOpciones.append(num8)
        
        imgView1.image = UIImage(named: Array(dicBanderas.values)[num1])
        imgView2.image = UIImage(named: Array(dicBanderas.values)[num2])
        imgView3.image = UIImage(named: Array(dicBanderas.values)[num3])
        imgView4.image = UIImage(named: Array(dicBanderas.values)[num4])
        imgView5.image = UIImage(named: Array(dicBanderas.values)[num5])
        imgView6.image = UIImage(named: Array(dicBanderas.values)[num6])
        imgView7.image = UIImage(named: Array(dicBanderas.values)[num7])
        imgView8.image = UIImage(named: Array(dicBanderas.values)[num8])
        
        let c2:Int = randomNumber(0...7)
        let t:Int = arrOpciones[c2]
        lblPalabra.text = Array(dicBanderas.keys)[t]
        reproducirMP3((lblPalabra.text)!)

        tap()
    }
    
    func randomNumber(range: Range<Int> = 1...6) -> Int {
        let min = range.startIndex
        let max = range.endIndex
        return Int(arc4random_uniform(UInt32(max - min))) + min
    }
    
    
    @IBAction func repetir(sender: AnyObject) {
        reproducirMP3((lblPalabra.text)!)
    }
    
    @IBAction func intentarDeNuevo(sender: AnyObject) {
        viewPerdiste.hidden = true
        vidas = 1
        lblVidas.text = String(vidas)
        puntaje = 0
        escoger()
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    
}