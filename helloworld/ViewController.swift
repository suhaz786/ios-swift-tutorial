//
//  ViewController.swift
//  helloworld
//
//  Created by Suhas Saheer on 06/09/2020.
//  Copyright © 2020 Suhas Saheer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    var pastedStrings: [String] = []
    
    let DATA_KEY = "data_key"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let loadedStrings = UserDefaults.standard.stringArray(forKey: DATA_KEY) {
            pastedStrings.append(contentsOf: loadedStrings)
        }
        showText();
    }
    
    @IBAction func trashBtn(_ sender: UIBarButtonItem) {
        textView.text = "Trashed!"
    }
    
    func showText() {
        textView.text = ""
        for str in pastedStrings {
            textView.text.append("\(str)\n\n")
        }
    }
    
    func addText() {
        guard let text = UIPasteboard.general.string, !pastedStrings.contains(text)  else {
            return
        }
        pastedStrings.append(text)
        UserDefaults.standard.set(pastedStrings, forKey: DATA_KEY)
        showText()
    }
    
}

