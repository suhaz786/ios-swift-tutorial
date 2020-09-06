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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = "Hello!"
    }
    @IBAction func trashBtn(_ sender: UIBarButtonItem) {
        textView.text = "Trashed!"
    }
    
}

