//
//  ViewController.swift
//  Bar
//
//  Created by Konstantyn Koroban on 02/09/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var menulabel: UILabel!
    @IBOutlet weak var totalRevenueLabel: UILabel!
    @IBOutlet weak var totalDranklabel: UILabel!
    
    let barManager = Bar.allBar
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buyTeaButton(_ sender: Any) {
    }
    
    @IBAction func buyWhiskeyButton(_ sender: Any) {
    }
    
    @IBAction func buyCoffeeButton(_ sender: Any) {
    }
}

