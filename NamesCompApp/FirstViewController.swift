//
//  ViewController.swift
//  NamesCompApp
//
//  Created by Denis Kitaev on 23.03.2023.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var yourNameTF: UITextField!
    @IBOutlet var partnerNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? ResultViewController else { return }
        destinationVC.firstName = yourNameTF.text
        destinationVC.secondName = partnerNameTF.text
    }

    @IBAction func buttonWasTapped() {
    }
}

