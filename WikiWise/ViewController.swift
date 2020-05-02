//
//  ViewController.swift
//  WikiWise
//
//  Created by Maiqui Cedeño on 9/04/20.
//  Copyright © 2020 PosetoStudio. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    var toFind:String?
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Finder(_ sender: UIButton) {
        
        toFind = textField.text!
        
        print(toFind!)
    }
    

}

