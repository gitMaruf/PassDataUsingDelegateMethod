//
//  ViewController.swift
//  passDataUsingDelegateMethod
//
//  Created by Maruf Howlader on 4/22/19.
//  Copyright © 2019 ABC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, canReceive {
    
    @IBOutlet weak var textFeildOne: UITextField!
    @IBOutlet weak var labelOne: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnPressedToSendData(_ sender: Any) {
        performSegue(withIdentifier: "gotoNext", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoNext"{
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = String(textFeildOne.text!)
        secondVC.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        labelOne.text = data
    }
    @IBAction func btnPressToChangeColor(_ sender: Any) {
//        self.view.
        view.backgroundColor = UIColor.red
    }
}

