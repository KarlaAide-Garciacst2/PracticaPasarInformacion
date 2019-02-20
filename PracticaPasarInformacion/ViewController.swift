//
//  ViewController.swift
//  PracticaPasarInformacion
//
//  Created by Universidad Politecnica de Gómez Palacio on 19-02-19.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TxtFullname: UITextField!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.TxtFullname.text = "Karla Aide Garcia Castañeda"
    }
    @IBAction func sendData(_ sender: Any)
    {
        //self.TxtFullname.text = "Raul Daniel Soto Castañeda"
        let fullName: String = self.TxtFullname.text ?? ""
        self.performSegue(withIdentifier: "sgSecondTVC", sender: fullName)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "sgSecondTVC"
        {
            if let secondTVC: SecondTVC = segue.destination as? SecondTVC
            {
                if let fullName: String = sender as? String
                {
                    secondTVC.fullName = fullName
                }
            }
        }
    }
}

