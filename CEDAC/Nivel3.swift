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
    var aciertos = 0
    var errores:Int = 0
    var vidas:Int = 1
    var arrOpciones:[Int] = []
    var LabelText = String()
    var dicBanderas = ["":""]
    
    var aciertos1 = 0
    var aciertos2 = 0
    var aciertos3 = 0
    var aciertos4 = 0
    var aciertos5 = 0
    var aciertos6 = 0
    
    var errores1 = 0
    var errores2 = 0
    var errores3 = 0
    var errores4 = 0
    var errores5 = 0
    var errores6 = 0
    
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
    
    @IBOutlet weak var vidas1: UIImageView!
    
    private var player:AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        lblVidas.hidden = true
        lblVidas.text = String(vidas)
        if LabelText == "Casa" {
            //40 elementos
            dicBanderas = ["Alfombra" : "alfombra.jpg", "Banco" : "banco.jpg", "Baño" : "banio.jpg", "Cama" : "cama.jpg", "Chimenea" : "chimenea.jpg", "Clóset" : "closet.jpg", "Cochera" : "cochera.jpg", "Cocina" : "cocina.jpg", "Cojín" : "cojin.jpg", "Comedor" : "comedor.jpg", "Computadora" : "computadora.jpg", "Cuadros" : "cuadros.jpg", "Escalera" : "escalera.jpg", "Escoba" : "escoba.jpg", "Espejo" : "espejo.jpg", "Florero" : "florero.jpg", "Foco" : "foco.jpg", "Jardín" : "jardin.jpg", "Jarra" : "jarra.jpg", "Lavabo" : "lavabo.jpg", "Lavadora" : "lavadora.jpg", "Librero" : "librero.jpg", "Maceta" : "maceta.jpg", "Microondas" : "microondas.jpg", "Perchero" : "perchero.jpg", "Puerta" : "puerta.jpg", "Recámara" : "recamara.jpg", "Refrigerador" : "refrigerador.jpg", "Regadera" : "regadera.jpg", "Reloj" : "reloj.jpg", "Sala" : "sala.jpg", "Sartén" : "sarten.jpg", "Sillas" : "sillas.jpg", "Sillón" : "sillon.jpg", "Teléfono" : "telefono.jpg", "Televisión" : "television.jpg", "Telescopio" : "telescopio.jpg", "Toallas" : "toallas.jpg", "Tocador" : "tocador.jpg", "Ventana" : "ventana.jpg"]
        }
        if LabelText == "Animales" {
            //40 elementos
            dicBanderas = ["Águila" : "aguila.jpg", "Ardilla" : "ardilla.jpg", "Armadillo" : "armadillo.jpg", "Ballena" : "ballena.jpg", "Búho" : "buho.jpg", "Caballo" : "caballo.jpg", "Caracol" : "caracol.jpg", "Catarina" : "catarina.jpg", "Cebra" : "cebra.jpg", "Cisne" : "cisne.jpg", "Conejo" : "conejo.jpg", "Delfín" : "delfin.jpg", "Elefante" : "elefante.jpg", "Foca" : "foca.jpg", "Gallina" : "gallina.jpg", "Gallo" : "gallo.jpg", "Iguana" : "iguana.jpg", "Jirafa" : "jirafa.jpg", "Koala" : "koala.jpg", "León" : "leon.jpg", "Leopardo" : "leopardo.jpg", "Lobo" : "lobo.jpg", "Loro" : "loro.jpg", "Mapache" : "mapache.jpg", "Mariposa" : "mariposa.jpg", "Mono" : "mono.jpg", "Oso" : "oso.jpg", "Oso panda" : "panda.jpg", "Pato" : "pato.jpg", "Perro" : "perro.jpg", "Pez" : "pez.jpg", "Pingüino" : "pinguino.jpg", "Pollo" : "pollo.jpg", "Rana" : "rana.jpg", "Ratón" : "raton.jpg", "Rinoceronte" : "rinoceronte.jpg", "Tigre" : "tigre.jpg", "Tortuga" : "tortuga.jpg", "Vaca" : "vaca.jpg", "Venado" : "venado.jpg"]
        }
        if LabelText == "Alimentos" {
            //40 elementos
            dicBanderas = ["Aguacate" : "aguacate.jpg", "Café" : "cafe.jpg", "Arroz" : "arroz.jpg", "Calabaza" : "calabaza.jpg", "Carne" : "carne.jpg", "Cebolla" : "cebolla.jpg", "Cereal" : "cereal.jpg", "Chícharos" : "chicharos.jpg", "Chiles" : "chiles.jpg", "Chocolate" : "chocolate.jpg", "Coco" : "coco.jpg", "Ensalada" : "ensalada.jpg", "Fresa" : "fresa.jpg", "Frijoles" : "frijoles.jpg", "Hamburguesa" : "hamburguesa.jpg", "Helado" : "helado.jpg", "Hot Cakes" : "hotcakes.jpg", "Huevo" : "huevo.jpg", "Jamón" : "jamon.jpg", "Jitomate" : "jitomate.jpg", "Leche" : "leche.jpg", "Lechuga" : "lechuga.jpg", "Manzana" : "manzana.jpg", "Miel" : "miel.jpg", "Naranja" : "naranja.jpg", "Pan" : "pan.jpg", "Papaya" : "papaya.jpg", "Pera" : "pera.jpg", "Pescado" : "pescado.jpg", "Piña" : "pinia.jpg", "Pizza" : "pizza.jpg", "Plátano" : "platano.jpg", "Pollo" : "pollo2.jpg", "Queso" : "queso.jpg", "Refresco" : "refresco.jpg", "Salchichas" : "salchichas.jpg", "Sandía" : "sandia.jpg", "Sopa" : "sopa.jpg", "Uvas" : "uvas.jpg", "Zanahoria" : "zanahoria.jpg"]
        }
        if LabelText == "Ropa" {
            //40 elementos
            dicBanderas = ["Abrigo" : "abrigo.jpg", "Anillo" : "anillo.jpg", "Bata" : "bata.jpg", "Blusa" : "blusajpg", "Bolsa" : "bolsa.jpg", "Botas" : "botas.jpg", "Bufanda" : "bufanda.jpg", "Calcetines" : "calcetines.jpg", "Camisa" : "camisa.jpg", "Camiseta" : "camiseta.jpg", "Chaleco" : "chaleco.jpg", "Chamarra" : "chamarra.jpg", "Chanclas" : "chanclas.jpg", "Cinturón" : "cinturon.jpg", "Collar" : "collar.jpg", "Corbata" : "corbata.jpg", "Falda" : "falda.jpg", "Gorra" : "gorra.jpg", "Gorro" : "gorro.jpg", "Guantes" : "guantes.jpg", "Impermeable" : "impermeable.jpg", "Lentes" : "lentes.jpg", "Mameluco" : "mameluco.jpg", "Moño" : "monio.jpg", "Pantalón" : "pantalon.jpg", "Pantuflas" : "pantuflas.jpg", "Pijama" : "pijama.jpg", "Pulseras" : "pulseras.jpg", "Reloj" : "reloj2.jpg", "Saco" : "saco.jpg", "Short" : "short.jpg", "Sombrero" : "sombrero.jpg", "Sudadera" : "sudadera.jpg", "Suéter" : "sueter.jpg", "Tacones" : "tacones.jpg", "Tenis" : "tenis.jpg", "Traje de baño" : "traje_de_banio.jpg", "Traje" : "traje.jpg", "Vestido" : "vestido.jpg", "Zapatos" : "zapatos.jpg"]
        }
        if LabelText == "Partes del cuerpo" {
            //26 elementos
            dicBanderas = ["Axila" : "axila.png", "Boca" : "boca.jpg", "Brazo" : "brazo.jpg", "Cabello" : "cabello.jpg", "Cabeza" : "cabeza.jpg", "Ceja" : "ceja.jpg", "Codo" : "codo.jpg", "Cuello" : "cuello.jpg", "Dedo" : "dedo.jpg", "Dientes" : "dientes.jpg", "Espalda" : "espalda.jpg", "Frente" : "frente.jpg", "Hombro" : "hombro.jpg", "Lengua" : "lengua.jpg", "Mano" : "mano.jpg", "Mejilla" : "mejilla.jpg", "Nariz" : "nariz.jpg", "Ojo" : "ojo.jpg", "Ombligo" : "ombligo.jpg", "Oreja" : "oreja.jpg", "Pestaña" : "pestania.jpg", "Pies" : "pies.jpg", "Piernas" : "piernas.jpg", "Rodilla" : "rodilla.jpg", "Torso" : "torso.jpg", "Uñas" : "unias.jpg"]
        }
        if LabelText == "Instrumentos" {
            //23 elementos
            dicBanderas = ["Acordeón" : "acordeon.jpg", "Armónica" : "armonica.jpg", "Arpa" : "arpa.jpg", "Batería" : "bateria.jpg", "Castañuelas" : "castanuelas.jpg", "Claves" : "claves.jpg", "Flauta" : "flauta.jpg", "Guitarra" : "guitarra.jpg", "Mandolina" : "mandolina.jpg", "Maracas" : "maracas.jpg", "Marimba" : "marimba.jpg", "Organillo" : "organillo.jpg", "Pandero" : "pandero.jpg", "Piano" : "piano.jpg", "Platillos" : "platillos.jpg", "Saxofón" : "saxofon.jpg", "Silbato" : "silbato.jpg", "Tambor" : "tambor.jpg", "Triángulo" : "triangulo.jpg", "Trompeta" : "trompeta.jpg", "Violín" : "violin.jpg", "Violoncello" : "violoncello.jpg", "Xilófono" : "xilofono.jpg"]
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
            aciertos++
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 1){
                viewPerdiste.hidden = false;
            } else {
                respuestaIncorrecta()
            }
        }
    }
    
    func imageTapped1(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[1]] == lblPalabra.text {
            aciertos++
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 1){
                viewPerdiste.hidden = false;
            } else {
                respuestaIncorrecta()
            }
        }
    }
    
    func imageTapped2(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[2]] == lblPalabra.text {
            aciertos++
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 1){
                viewPerdiste.hidden = false;
            } else {
                respuestaIncorrecta()
            }
        }
    }
    
    func imageTapped3(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[3]] == lblPalabra.text {
            aciertos++
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 1){
                viewPerdiste.hidden = false;
            } else {
                respuestaIncorrecta()
            }
        }
    }
    
    func imageTapped4(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[4]] == lblPalabra.text {
            aciertos++
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 1){
                viewPerdiste.hidden = false;
            } else {
                respuestaIncorrecta()
            }
        }
    }
    
    func imageTapped5(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[5]] == lblPalabra.text {
            aciertos++
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 1){
                viewPerdiste.hidden = false;
            } else {
                respuestaIncorrecta()
            }
        }
    }
    
    func imageTapped6(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[6]] == lblPalabra.text {
            aciertos++
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 1){
                viewPerdiste.hidden = false;
            } else {
                respuestaIncorrecta()
            }
        }
    }
    
    func imageTapped7(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[7]] == lblPalabra.text {
            aciertos++
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 1){
                viewPerdiste.hidden = false;
            } else {
                respuestaIncorrecta()
            }
        }
    }
    
    func respuestaCorrecta(){
        puntaje+=1
        if LabelText == "Casa" {aciertos1++}
        if LabelText == "Animales" {aciertos2++}
        if LabelText == "Alimentos" {aciertos3++}
        if LabelText == "Ropa" {aciertos4++}
        if LabelText == "Partes del cuerpo" {aciertos5++}
        if LabelText == "Instrumentos" {aciertos6++}

        /*
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
        */
        
        lblPuntaje.text = String(puntaje)
    }
    
    func respuestaIncorrecta(){
        if LabelText == "Casa" {errores1++}
        if LabelText == "Animales" {errores2++}
        if LabelText == "Alimentos" {errores3++}
        if LabelText == "Ropa" {errores4++}
        if LabelText == "Partes del cuerpo" {errores5++}
        if LabelText == "Instrumentos" {errores6++}

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
        if vidas == 0 {
            vidas1.alpha = 0.5
            vidas1.image = UIImage(named: "vidasMenos.png")
        }
        
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
        num6 = 0
        num7 = 0
        num8 = 0
        
        lblPuntaje.text = String(puntaje)
        if LabelText == "Casa" {
            if d == 0 {
                num1 = randomNumber(0...4)
                num2 = randomNumber(5...9)
                num3 = randomNumber(10...14)
                num4 = randomNumber(15...19)
                num5 = randomNumber(20...24)
                num6 = randomNumber(25...29)
                num7 = randomNumber(30...34)
                num8 = randomNumber(35...39)
                d = d + 1
            } else if d == 1 {
                num5 = randomNumber(0...4)
                num6 = randomNumber(5...9)
                num7 = randomNumber(10...14)
                num8 = randomNumber(15...19)
                num1 = randomNumber(20...24)
                num2 = randomNumber(25...29)
                num3 = randomNumber(30...34)
                num4 = randomNumber(35...39)
                d = d + 1
            } else if d == 2 {
                num8 = randomNumber(0...4)
                num7 = randomNumber(5...9)
                num6 = randomNumber(10...14)
                num5 = randomNumber(15...19)
                num4 = randomNumber(20...24)
                num3 = randomNumber(25...29)
                num2 = randomNumber(30...34)
                num1 = randomNumber(35...39)
                d = 0
            }
        }
        if LabelText == "Animales" {
            if d == 0 {
                num1 = randomNumber(0...4)
                num2 = randomNumber(5...9)
                num3 = randomNumber(10...14)
                num4 = randomNumber(15...19)
                num5 = randomNumber(20...24)
                num6 = randomNumber(25...29)
                num7 = randomNumber(30...34)
                num8 = randomNumber(35...39)
                d = d + 1
            } else if d == 1 {
                num5 = randomNumber(0...4)
                num6 = randomNumber(5...9)
                num7 = randomNumber(10...14)
                num8 = randomNumber(15...19)
                num1 = randomNumber(20...24)
                num2 = randomNumber(25...29)
                num3 = randomNumber(30...34)
                num4 = randomNumber(35...39)
                d = d + 1
            } else if d == 2 {
                num8 = randomNumber(0...4)
                num7 = randomNumber(5...9)
                num6 = randomNumber(10...14)
                num5 = randomNumber(15...19)
                num4 = randomNumber(20...24)
                num3 = randomNumber(25...29)
                num2 = randomNumber(30...34)
                num1 = randomNumber(35...39)
                d = 0
            }
        }
        if LabelText == "Alimentos" {
            if d == 0 {
                num1 = randomNumber(0...4)
                num2 = randomNumber(5...9)
                num3 = randomNumber(10...14)
                num4 = randomNumber(15...19)
                num5 = randomNumber(20...24)
                num6 = randomNumber(25...29)
                num7 = randomNumber(30...34)
                num8 = randomNumber(35...39)
                d = d + 1
            } else if d == 1 {
                num5 = randomNumber(0...4)
                num6 = randomNumber(5...9)
                num7 = randomNumber(10...14)
                num8 = randomNumber(15...19)
                num1 = randomNumber(20...24)
                num2 = randomNumber(25...29)
                num3 = randomNumber(30...34)
                num4 = randomNumber(35...39)
                d = d + 1
            } else if d == 2 {
                num8 = randomNumber(0...4)
                num7 = randomNumber(5...9)
                num6 = randomNumber(10...14)
                num5 = randomNumber(15...19)
                num4 = randomNumber(20...24)
                num3 = randomNumber(25...29)
                num2 = randomNumber(30...34)
                num1 = randomNumber(35...39)
                d = 0
            }
        }
        if LabelText == "Ropa" {
            if d == 0 {
                num1 = randomNumber(0...4)
                num2 = randomNumber(5...9)
                num3 = randomNumber(10...14)
                num4 = randomNumber(15...19)
                num5 = randomNumber(20...24)
                num6 = randomNumber(25...29)
                num7 = randomNumber(30...34)
                num8 = randomNumber(35...39)
                d = d + 1
            } else if d == 1 {
                num5 = randomNumber(0...4)
                num6 = randomNumber(5...9)
                num7 = randomNumber(10...14)
                num8 = randomNumber(15...19)
                num1 = randomNumber(20...24)
                num2 = randomNumber(25...29)
                num3 = randomNumber(30...34)
                num4 = randomNumber(35...39)
                d = d + 1
            } else if d == 2 {
                num8 = randomNumber(0...4)
                num7 = randomNumber(5...9)
                num6 = randomNumber(10...14)
                num5 = randomNumber(15...19)
                num4 = randomNumber(20...24)
                num3 = randomNumber(25...29)
                num2 = randomNumber(30...34)
                num1 = randomNumber(35...39)
                d = 0
            }
        }
        if LabelText == "Partes del cuerpo" {
            if d == 0 {
                num1 = randomNumber(0...2)
                num2 = randomNumber(3...5)
                num3 = randomNumber(6...8)
                num4 = randomNumber(9...11)
                num5 = randomNumber(12...14)
                num6 = randomNumber(15...17)
                num7 = randomNumber(18...21)
                num8 = randomNumber(22...25)
                d = d + 1
            } else if d == 1 {
                num5 = randomNumber(0...2)
                num6 = randomNumber(3...5)
                num7 = randomNumber(6...8)
                num8 = randomNumber(9...11)
                num1 = randomNumber(12...14)
                num2 = randomNumber(15...17)
                num3 = randomNumber(18...21)
                num4 = randomNumber(22...25)
                d = d + 1
            } else if d == 2 {
                num8 = randomNumber(0...2)
                num7 = randomNumber(3...5)
                num6 = randomNumber(6...8)
                num5 = randomNumber(9...11)
                num4 = randomNumber(12...14)
                num3 = randomNumber(15...17)
                num2 = randomNumber(18...21)
                num1 = randomNumber(22...25)
                d = 0
            }
        }

        if LabelText == "Instrumentos" {
            if d == 0 {
                num1 = randomNumber(0...1)
                num2 = randomNumber(2...3)
                num3 = randomNumber(4...5)
                num4 = randomNumber(6...7)
                num5 = randomNumber(8...10)
                num6 = randomNumber(11...14)
                num7 = randomNumber(15...19)
                num8 = randomNumber(20...22)
                d = d + 1
            } else if d == 1 {
                num5 = randomNumber(0...1)
                num6 = randomNumber(2...3)
                num7 = randomNumber(4...5)
                num8 = randomNumber(6...7)
                num1 = randomNumber(8...10)
                num2 = randomNumber(11...14)
                num3 = randomNumber(15...19)
                num4 = randomNumber(20...22)
                d = d + 1
            } else if d == 2 {
                num8 = randomNumber(0...1)
                num7 = randomNumber(2...3)
                num6 = randomNumber(4...5)
                num5 = randomNumber(6...7)
                num4 = randomNumber(8...10)
                num3 = randomNumber(11...14)
                num2 = randomNumber(15...19)
                num1 = randomNumber(20...22)
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if aciertos == 5 {
            terminando()
        } else {
            terminando()
        }
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
    
    private func registrarNotificaciones() {
        //Para iniciar
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "iniciando", name: UIApplicationDidBecomeActiveNotification, object: nil)
        //Para terminar
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "terminando", name: UIApplicationWillResignActiveNotification, object: nil)
    }
    
    //RGVWGWEVCE
    func terminando() {
        let preferencias = NSUserDefaults.standardUserDefaults()
        preferencias.synchronize()
        var t1 = 0
        var t2 = 0
        var t3 = 0
        var t4 = 0
        var t5 = 0
        var t6 = 0
        var e1 = 0
        var e2 = 0
        var e3 = 0
        var e4 = 0
        var e5 = 0
        var e6 = 0
        
        //Recuperar los datos
        if LabelText == "Casa" {
            if let strTitulo = preferencias.stringForKey("prefaciertos31") {
                t1 = Int(strTitulo)!
            }
            t1 = t1 + aciertos;
            if let strTitulo1 = preferencias.stringForKey("preferrores31") {
                e1 = Int(strTitulo1)!
            }
            e1 = e1 + errores;
            
            preferencias.setObject(String(t1), forKey: "prefaciertos31")
            preferencias.setObject(String(e1), forKey: "preferrores31")
            preferencias.synchronize()
        }
        
        if LabelText == "Animales" {
            if let strTitulo = preferencias.stringForKey("prefaciertos32") {
                t2 = Int(strTitulo)!
            }
            t2 = t2 + aciertos;
            if let strTitulo1 = preferencias.stringForKey("preferrores32") {
                e1 = Int(strTitulo1)!
            }
            e2 = e2 + errores;
            preferencias.setObject(String(t2), forKey: "prefaciertos32")
            preferencias.setObject(String(e2), forKey: "preferrores32")
            preferencias.synchronize()
        }
        if LabelText == "Alimentos" {
            if let strTitulo = preferencias.stringForKey("prefaciertos33") {
                t3 = Int(strTitulo)!
            }
            t3 = t3 + aciertos;
            if let strTitulo1 = preferencias.stringForKey("preferrores33") {
                e3 = Int(strTitulo1)!
            }
            e3 = e3 + errores;
            preferencias.setObject(String(t3), forKey: "prefaciertos33")
            preferencias.setObject(String(e3), forKey: "preferrores33")
            preferencias.synchronize()
        }
        if LabelText == "Ropa" {
            if let strTitulo = preferencias.stringForKey("prefaciertos34") {
                t4 = Int(strTitulo)!
            }
            t4 = t4 + aciertos;
            if let strTitulo1 = preferencias.stringForKey("preferrores34") {
                e4 = Int(strTitulo1)!
            }
            e4 = e4 + errores;
            preferencias.setObject(String(t4), forKey: "prefaciertos34")
            preferencias.setObject(String(e4), forKey: "preferrores34")
            preferencias.synchronize()
        }
        if LabelText == "Partes del cuerpo" {
            if let strTitulo = preferencias.stringForKey("prefaciertos35") {
                t5 = Int(strTitulo)!
            }
            t5 = t5 + aciertos;
            if let strTitulo1 = preferencias.stringForKey("preferrores35") {
                e5 = Int(strTitulo1)!
            }
            e5 = e5 + errores;
            preferencias.setObject(String(t5), forKey: "prefaciertos35")
            preferencias.setObject(String(e5), forKey: "preferrores35")
            preferencias.synchronize()
        }
        if LabelText == "Instrumentos" {
            if let strTitulo = preferencias.stringForKey("prefaciertos36") {
                t6 = Int(strTitulo)!
            }
            t6 = t6 + aciertos;
            if let strTitulo1 = preferencias.stringForKey("preferrores36") {
                e6 = Int(strTitulo1)!
            }
            e6 = e6 + errores;
            preferencias.setObject(String(t6), forKey: "prefaciertos36")
            preferencias.setObject(String(e6), forKey: "preferrores36")
            preferencias.synchronize()
        }
    }
    
}