//
//  SecondViewController.swift
//  passDataUsingDelegateMethod
//
//  Created by Maruf Howlader on 4/22/19.
//  Copyright © 2019 ABC. All rights reserved.
//

import UIKit

protocol canReceive {
    func dataReceived(data:String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var textFeildTwo: UITextField!
    var data:String = ""
    var delegate : canReceive?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTwo.text = data
       
    }
    @IBAction func btnPressToGetBack(_ sender: Any) {
        delegate!.dataReceived(data: String(textFeildTwo.text!))
        dismiss(animated: true, completion: nil)
    }
}
