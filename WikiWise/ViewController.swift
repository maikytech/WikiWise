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
    
    
    /* URL https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles=sega */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Finder(_ sender: UIButton) {
        
        toFind = textField.text!
        print(toFind!)
        
        let url = "https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles=\(toFind!)"
        
        print(url)
        
        let urlToFind = URL(string: url)
        
        print(urlToFind!)
        
        let task = URLSession.shared.dataTask(with: urlToFind!) {(data, response, error) in

            if error != nil {

                print(error!)
            }else {

                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject

                    print(json)

                }catch {

                    print("JSON error")
                }
            }

        }

        task.resume()
        
        
    }
    

}

