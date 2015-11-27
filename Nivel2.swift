//
//  Nivel2.swift
//  CEDAC
//
//  Created by Sebastián Loredo on 10/10/15.
//  Copyright © 2015 Carlos Sebastián Loredo Gómez. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class Nivel2: UIViewController {
    
    var num1:Int = 0
    var num2:Int = 0
    var num3:Int = 0
    var num4:Int = 0
    var num5:Int = 0
    var entrar = 0
    var d:Int = 0
    var puntaje:Int = 0
    var errores:Int = 0
    var aciertos = 0
    var vidas:Int = 3
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
    
    @IBOutlet weak var viewGanaste: UIView!
    @IBOutlet weak var viewPerdiste: UIView!
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    @IBOutlet weak var imgView4: UIImageView!
    @IBOutlet weak var imgView5: UIImageView!
    @IBOutlet weak var lblPalabra: UILabel!
    @IBOutlet weak var lblPuntaje: UILabel!
    @IBOutlet weak var lblVidas: UILabel!
    @IBOutlet weak var lblrepetir: UIButton!
    
    @IBOutlet weak var vidas1: UIImageView!
    @IBOutlet weak var vidas2: UIImageView!
    @IBOutlet weak var vidas3: UIImageView!
    
    private var player:AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        lblVidas.hidden = true
        super.viewDidLoad()
        
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
            dicBanderas = ["Abrigo" : "abrigo.jpg", "Anillo" : "anillo.jpg", "Bata" : "bata.jpg", "Blusa" : "blusa.jpg", "Bolsa" : "bolsa.jpg", "Botas" : "botas.jpg", "Bufanda" : "bufanda.jpg", "Calcetines" : "calcetines.jpg", "Camisa" : "camisa.jpg", "Camiseta" : "camiseta.jpg", "Chaleco" : "chaleco.jpg", "Chamarra" : "chamarra.jpg", "Chanclas" : "chanclas.jpg", "Cinturón" : "cinturon.jpg", "Collar" : "collar.jpg", "Corbata" : "corbata.jpg", "Falda" : "falda.jpg", "Gorra" : "gorra.jpg", "Gorro" : "gorro.jpg", "Guantes" : "guantes.jpg", "Impermeable" : "impermeable.jpg", "Lentes" : "lentes.jpg", "Mameluco" : "mameluco.jpg", "Moño" : "monio.jpg", "Pantalón" : "pantalon.jpg", "Pantuflas" : "pantuflas.jpg", "Pijama" : "pijama.jpg", "Pulseras" : "pulseras.jpg", "Reloj" : "reloj2.jpg", "Saco" : "saco.jpg", "Short" : "short.jpg", "Sombrero" : "sombrero.jpg", "Sudadera" : "sudadera.jpg", "Suéter" : "sueter.jpg", "Tacones" : "tacones.jpg", "Tenis" : "tenis.jpg", "Traje de baño" : "traje_de_banio.jpg", "Traje" : "traje.jpg", "Vestido" : "vestido.jpg", "Zapatos" : "zapatos.jpg"]
        }
        if LabelText == "Partes del cuerpo" {
            //26 elementos
            dicBanderas = ["Axila" : "axila.jpg", "Boca" : "boca.jpg", "Brazo" : "brazo.jpg", "Cabello" : "cabello.jpg", "Cabeza" : "cabeza.jpg", "Ceja" : "ceja.jpg", "Codo" : "codo.jpg", "Cuello" : "cuello.jpg", "Dedo" : "dedo.jpg", "Dientes" : "dientes.jpg", "Espalda" : "espalda.jpg", "Frente" : "frente.jpg", "Hombro" : "hombro.jpg", "Lengua" : "lengua.jpg", "Mano" : "mano.jpg", "Mejilla" : "mejilla.jpg", "Nariz" : "nariz.jpg", "Ojo" : "ojo.jpg", "Ombligo" : "ombligo.jpg", "Oreja" : "oreja.jpg", "Pestaña" : "pestania.jpg", "Pies" : "pies.jpg", "Piernas" : "piernas.jpg", "Rodilla" : "rodilla.jpg", "Torso" : "torso.jpg", "Uñas" : "unias.jpg"]
        }
        if LabelText == "Instrumentos" {
            //23 elementos
            dicBanderas = ["Acordeón" : "acordeon.jpg", "Armónica" : "armonica.jpg", "Arpa" : "arpa.jpg", "Batería" : "bateria.jpg", "Castañuelas" : "castanuelas.jpg", "Claves" : "claves.jpg", "Flauta" : "flauta.jpg", "Guitarra" : "guitarra.jpg", "Mandolina" : "mandolina.jpg", "Maracas" : "maracas.jpg", "Marimba" : "marimba.jpg", "Organillo" : "organillo.jpg", "Pandero" : "pandero.jpg", "Piano" : "piano.jpg", "Platillos" : "platillos.jpg", "Saxofón" : "saxofon.jpg", "Silbato" : "silbato.jpg", "Tambor" : "tambor.jpg", "Triángulo" : "triangulo.jpg", "Trompeta" : "trompeta.jpg", "Violín" : "violin.jpg", "Violoncello" : "violoncello.jpg", "Xilófono" : "xilofono.jpg"]
        }
        escoger()
        
    }
    
    private func reproducirMP3(a:String) {
        var palabra = a
        //Casa
        if palabra == "Baño" {
            palabra = "Banio"
        }
        if palabra == "Clóset" {
            palabra = "Closet"
        }
        if palabra == "Cojín" {
            palabra = "Cojin"
        }
        if palabra == "Jardín" {
            palabra = "Jardin"
        }
        if palabra == "Recámara" {
            palabra = "Recamara"
        }
        if palabra == "Sartén" {
            palabra = "Sarten"
        }
        if palabra == "Sillón" {
            palabra = "Sillon"
        }
        if palabra == "Teléfono" {
            palabra = "Telefono"
        }
        if palabra == "Televisión" {
            palabra = "Television"
        }
        
        //Alimentos
        if palabra == "Café" {
            palabra = "Cafe"
        }
        if palabra == "Chícharos" {
            palabra = "Chicharos"
        }
        if palabra == "Jamón" {
            palabra = "Jamon"
        }
        if palabra == "Piña" {
            palabra = "Pinia"
        }
        if palabra == "Plátano" {
            palabra = "Platano"
        }
        if palabra == "Sandía" {
            palabra = "Sandia"
        }
        
        //Animales
        if palabra == "Águila" {
            palabra = "Aguila"
        }
        if palabra == "Búho" {
            palabra = "Buho"
        }
        if palabra == "Delfín" {
            palabra = "Delfin"
        }
        if palabra == "León" {
            palabra = "Leon"
        }
        if palabra == "Pingüino" {
            palabra = "Pinguino"
        }
        if palabra == "Ratón" {
            palabra = "Raton"
        }
        
        //Ropa
        if palabra == "Cinturón" {
            palabra = "Cinturon"
        }
        if palabra == "Moño" {
            palabra = "Monio"
        }
        if palabra == "Pantalón" {
            palabra = "Pantalon"
        }
        if palabra == "Suéter" {
            palabra = "Sueter"
        }
        if palabra == "Traje de baño" {
            palabra = "Traje de banio"
        }
        
        //Cuerpo
        if palabra == "Pestaña" {
            palabra = "Pestania"
        }
        if palabra == "Uñas" {
            palabra = "Unias"
        }
        
        
        //Instrumentos
        if palabra == "Acordeón" {
            palabra = "Acordeon"
        }
        if palabra == "Armónica" {
            palabra = "Armonica"
        }
        if palabra == "Batería" {
            palabra = "Bateria"
        }
        if palabra == "Castañuelas" {
            palabra = "Castanuelas"
        }
        if palabra == "Saxofón" {
            palabra = "Saxofon"
        }
        if palabra == "Triángulo" {
            palabra = "Triangulo"
        }
        if palabra == "Violín" {
            palabra = "Violin"
        }
        if palabra == "Xilófono" {
            palabra = "Xilofono"
        }
        if entrar == 0{
            
            if let url = NSBundle.mainBundle().URLForResource(palabra, withExtension: "m4a") {
                if let player = try? AVAudioPlayer(contentsOfURL: url) {
                    self.player = player
                    self.player.prepareToPlay()
                }
                
                if self.player.playing {
                    self.player.stop()
                }
                self.player.play()
            } else {
                lblrepetir.setTitle("Audio no disponible", forState: UIControlState.Normal)
                lblrepetir.enabled = false
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
    }
    
    func imageTapped(img: AnyObject) {
        if Array(dicBanderas.keys)[arrOpciones[0]] == lblPalabra.text {
            aciertos++
            respuestaCorrecta()
            escoger()
        }else{
            errores = errores + 1
            if(vidas == 1){
                player.stop();
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
                player.stop();
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
                player.stop();
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
                player.stop();
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
                player.stop();
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
        if vidas == 2 {
            vidas1.alpha = 0.5
            vidas1.image = UIImage(named: "vidasMenos.png")
        }
        if vidas == 1 {
            vidas2.alpha = 0.5
            vidas2.image = UIImage(named: "vidasMenos.png")
        }
        if vidas == 0 {
            vidas3.alpha = 0.5
            vidas3.image = UIImage(named: "vidasMenos.png")
        }
        lblVidas.text = String(vidas)
    }
    
    func escoger() {
        if puntaje == 5 {
            entrar = 1
            if let url = NSBundle.mainBundle().URLForResource("tada", withExtension: "m4a") {
                if let player = try? AVAudioPlayer(contentsOfURL: url) {
                    self.player = player
                    self.player.prepareToPlay()
                }
                
                
                if self.player.playing {
                    self.player.stop()
                }
                
                self.player.play()
                
            }
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
                num1 = randomNumber(0...7)
                num2 = randomNumber(8...16)
                num3 = randomNumber(17...24)
                num4 = randomNumber(25...32)
                num5 = randomNumber(33...39)
                d = d + 1
            } else if d == 1 {
                num2 = randomNumber(0...7)
                num3 = randomNumber(8...16)
                num4 = randomNumber(17...24)
                num5 = randomNumber(25...32)
                num1 = randomNumber(33...39)
                d = d + 1
            } else if d == 2 {
                num3 = randomNumber(0...7)
                num4 = randomNumber(8...16)
                num5 = randomNumber(17...24)
                num1 = randomNumber(25...32)
                num2 = randomNumber(33...39)
                d = 0
            }
        }
        if LabelText == "Animales" {
            if d == 0 {
                num1 = randomNumber(0...7)
                num2 = randomNumber(8...16)
                num3 = randomNumber(17...24)
                num4 = randomNumber(25...32)
                num5 = randomNumber(33...39)
                d = d + 1
            } else if d == 1 {
                num2 = randomNumber(0...7)
                num3 = randomNumber(8...16)
                num4 = randomNumber(17...24)
                num5 = randomNumber(25...32)
                num1 = randomNumber(33...39)
                d = d + 1
            } else if d == 2 {
                num3 = randomNumber(0...7)
                num4 = randomNumber(8...16)
                num5 = randomNumber(17...24)
                num1 = randomNumber(25...32)
                num2 = randomNumber(33...39)
                d = 0
            }
        }
        if LabelText == "Alimentos" {
            if d == 0 {
                num1 = randomNumber(0...7)
                num2 = randomNumber(8...16)
                num3 = randomNumber(17...24)
                num4 = randomNumber(25...32)
                num5 = randomNumber(33...39)
                d = d + 1
            } else if d == 1 {
                num2 = randomNumber(0...7)
                num3 = randomNumber(8...16)
                num4 = randomNumber(17...24)
                num5 = randomNumber(25...32)
                num1 = randomNumber(33...39)
                d = d + 1
            } else if d == 2 {
                num3 = randomNumber(0...7)
                num4 = randomNumber(8...16)
                num5 = randomNumber(17...24)
                num1 = randomNumber(25...32)
                num2 = randomNumber(33...39)
                d = 0
            }
        }
        if LabelText == "Ropa" {
            if d == 0 {
                num1 = randomNumber(0...7)
                num2 = randomNumber(8...16)
                num3 = randomNumber(17...24)
                num4 = randomNumber(25...32)
                num5 = randomNumber(33...39)
                d = d + 1
            } else if d == 1 {
                num2 = randomNumber(0...7)
                num3 = randomNumber(8...16)
                num4 = randomNumber(17...24)
                num5 = randomNumber(25...32)
                num1 = randomNumber(33...39)
                d = d + 1
            } else if d == 2 {
                num3 = randomNumber(0...7)
                num4 = randomNumber(8...16)
                num5 = randomNumber(17...24)
                num1 = randomNumber(25...32)
                num2 = randomNumber(33...39)
                d = 0
            }
        }
        
        if LabelText == "Partes del cuerpo" {
            if d == 0 {
                num1 = randomNumber(0...4)
                num2 = randomNumber(5...9)
                num3 = randomNumber(10...14)
                num4 = randomNumber(15...19)
                num5 = randomNumber(20...25)
                d = d + 1
            } else if d == 1 {
                num2 = randomNumber(0...4)
                num3 = randomNumber(5...9)
                num4 = randomNumber(10...14)
                num5 = randomNumber(15...19)
                num1 = randomNumber(20...25)
                d = d + 1
            } else if d == 2 {
                num3 = randomNumber(0...4)
                num4 = randomNumber(5...9)
                num5 = randomNumber(10...14)
                num1 = randomNumber(15...19)
                num2 = randomNumber(20...25)
                d = 0
            }
        }
        if LabelText == "Instrumentos" {
            if d == 0 {
                num1 = randomNumber(0...3)
                num2 = randomNumber(4...8)
                num3 = randomNumber(9...13)
                num4 = randomNumber(14...18)
                num5 = randomNumber(19...22)
                d = d + 1
            } else if d == 1 {
                num2 = randomNumber(0...3)
                num3 = randomNumber(4...8)
                num4 = randomNumber(9...13)
                num5 = randomNumber(14...18)
                num1 = randomNumber(19...22)
                d = d + 1
            } else if d == 2 {
                num3 = randomNumber(0...3)
                num4 = randomNumber(4...8)
                num5 = randomNumber(9...13)
                num1 = randomNumber(14...18)
                num2 = randomNumber(19...22)
                d = 0
            }
        }
        
        arrOpciones.append(num1)
        arrOpciones.append(num2)
        arrOpciones.append(num3)
        arrOpciones.append(num4)
        arrOpciones.append(num5)
        imgView1.image = UIImage(named: Array(dicBanderas.values)[num1])
        imgView2.image = UIImage(named: Array(dicBanderas.values)[num2])
        imgView3.image = UIImage(named: Array(dicBanderas.values)[num3])
        imgView4.image = UIImage(named: Array(dicBanderas.values)[num4])
        imgView5.image = UIImage(named: Array(dicBanderas.values)[num5])
        
        let c2:Int = randomNumber(0...4)
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
    
    
    @IBAction func intentarDeNuevo(sender: AnyObject) {
        viewPerdiste.hidden = true
        vidas = 3
        lblVidas.text = String(vidas)
        puntaje = 0
        vidas1.alpha = 1
        vidas1.image = UIImage(named: "vidasNivel2.png")
        vidas2.alpha = 1
        vidas2.image = UIImage(named: "vidasNivel2.png")
        vidas3.alpha = 1
        vidas3.image = UIImage(named: "vidasNivel2.png")
        escoger()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if aciertos == 5 {
            let DestViewController: Nivel3 = segue.destinationViewController as! Nivel3
            DestViewController.LabelText = LabelText
            terminando()
        } else {
            terminando()
        }
    }
    
    private func registrarNotificaciones() {
        //Para terminar
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "terminando", name: UIApplicationWillResignActiveNotification, object: nil)
    }
    
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
            if let strTitulo = preferencias.stringForKey("prefaciertos27") {
                t1 = Int(strTitulo)!
            }
            t1 = t1 + aciertos;
            if let strTitulo1 = preferencias.stringForKey("preferrores21") {
                e1 = Int(strTitulo1)!
            }
            e1 = e1 + errores;
            
            preferencias.setObject(String(t1), forKey: "prefaciertos27")
            preferencias.setObject(String(e1), forKey: "preferrores21")
            preferencias.synchronize()
        }
        
        if LabelText == "Animales" {
            if let strTitulo = preferencias.stringForKey("prefaciertos28") {
                t2 = Int(strTitulo)!
            }
            t2 = t2 + aciertos;
            if let strTitulo1 = preferencias.stringForKey("preferrores22") {
                e1 = Int(strTitulo1)!
            }
            e2 = e2 + errores;
            preferencias.setObject(String(t2), forKey: "prefaciertos28")
            preferencias.setObject(String(e2), forKey: "preferrores22")
            preferencias.synchronize()
        }
        if LabelText == "Alimentos" {
            if let strTitulo = preferencias.stringForKey("prefaciertos29") {
                t3 = Int(strTitulo)!
            }
            t3 = t3 + aciertos;
            if let strTitulo1 = preferencias.stringForKey("preferrores23") {
                e3 = Int(strTitulo1)!
            }
            e3 = e3 + errores;
            preferencias.setObject(String(t3), forKey: "prefaciertos29")
            preferencias.setObject(String(e3), forKey: "preferrores23")
            preferencias.synchronize()
        }
        if LabelText == "Ropa" {
            if let strTitulo = preferencias.stringForKey("prefaciertos30") {
                t4 = Int(strTitulo)!
            }
            t4 = t4 + aciertos;
            if let strTitulo1 = preferencias.stringForKey("preferrores24") {
                e4 = Int(strTitulo1)!
            }
            e4 = e4 + errores;
            preferencias.setObject(String(t4), forKey: "prefaciertos30")
            preferencias.setObject(String(e4), forKey: "preferrores24")
            preferencias.synchronize()
        }
        if LabelText == "Partes del cuerpo" {
            if let strTitulo = preferencias.stringForKey("prefaciertos31") {
                t5 = Int(strTitulo)!
            }
            t5 = t5 + aciertos;
            if let strTitulo1 = preferencias.stringForKey("preferrores25") {
                e5 = Int(strTitulo1)!
            }
            e5 = e5 + errores;
            preferencias.setObject(String(t5), forKey: "prefaciertos31")
            preferencias.setObject(String(e5), forKey: "preferrores25")
            preferencias.synchronize()
        }
        if LabelText == "Instrumentos" {
            if let strTitulo = preferencias.stringForKey("prefaciertos32") {
                t6 = Int(strTitulo)!
            }
            t6 = t6 + aciertos;
            if let strTitulo1 = preferencias.stringForKey("preferrores26") {
                e6 = Int(strTitulo1)!
            }
            e6 = e6 + errores;
            preferencias.setObject(String(t6), forKey: "prefaciertos32")
            preferencias.setObject(String(e6), forKey: "preferrores26")
            preferencias.synchronize()
        }
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    @IBAction func salir(sender: AnyObject) {
        player.stop();
    }
    
    @IBAction func repetir(sender: AnyObject) {
        reproducirMP3((lblPalabra.text)!)
    }
    
    @IBAction func sigNivel(sender: AnyObject) {
        player.stop();
    }
}