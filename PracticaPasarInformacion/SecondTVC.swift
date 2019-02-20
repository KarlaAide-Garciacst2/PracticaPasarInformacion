//
//  SecondTVC.swift
//  PracticaPasarInformacion
//
//  Created by Universidad Politecnica de Gómez Palacio on 19-02-19.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class SecondTVC: UITableViewController
{

    @IBOutlet weak var lbFullName: UILabel!
    
    var fullName: String!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.lbFullName.text = fullName

    }
}
