//
//  ViewController.swift
//  CEDAC
//
//  Created by Sebastián Loredo on 14/09/15.
//  Copyright (c) 2015 Carlos Sebastián Loredo Gómez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var LabelText = String()

    @IBOutlet weak var viewSesion: UIView!
    
    @IBAction func entrar(sender: AnyObject) {
        viewSesion.hidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true
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

