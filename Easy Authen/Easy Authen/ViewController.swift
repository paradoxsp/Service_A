//
//  ViewController.swift
//  Easy Authen
//
//  Created by admin on 12/9/2560 BE.
//  Copyright © 2560 paradoxjava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Explicit
    var userString: String = ""
    var passwordString: String = ""
    var displayStrings = [
        "Have Space Please Fill All Blank",
        "User False",
        "Password False",
        "Welcome Member"
    ]
    var dicMemberStrings = [
        "User1":"1",
        "User2":"2",
        "User3":"3",    
    ]
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var displayTextField: UILabel!
    
    
    @IBAction func loginButton(_ sender: Any) {
        userString = userTextField.text!
        passwordString = passwordTextField.text!
        
        // Show Log
        print("User >> \(userString)")
        print("Password >> \(passwordString)")
        
        // Check User
        //print("Result >> \(dicMemberStrings[userString]!)")
        
        if let myCheckPassword = dicMemberStrings[userString] {
            print("True Password >> \(myCheckPassword)")
 
            if (passwordString == myCheckPassword) {
                displayTextField.text = displayStrings[3]
            }else{
                displayTextField.text = displayStrings[2]
            }
        }else{
            displayTextField.text = displayStrings[1]
        }
        
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

