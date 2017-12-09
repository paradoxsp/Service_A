//
//  ViewController.swift
//  Service A
//
//  Created by admin on 12/9/2560 BE.
//  Copyright © 2560 paradoxjava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //Explicit
    var nameString: String = ""
    
    
    @IBOutlet weak var myTextField: UITextField!
    
    
    
    @IBAction func clickAction(_ sender: Any) {
        nameString = myTextField.text!
        
        print("nameString >> \(nameString)")
        // Show logcat
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

