//
//  ViewController.swift
//  KeychainExercise
//
//  Created by Angelina Olmedo on 6/10/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import UIKit
import KeychainSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    
    let keychain = KeychainSwift()
//    keychain.set("hello world", forKey: "my key")
//    keychain.get("my key")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func keychainSave(str: String) {
        keychain.set(str, forKey: "savedText")
    }
    
    func keychainDelete() {
        keychainSave(str: "")
    }
    
    func keychainReveal() -> String? {
        return keychain.get("savedText")
    }

    @IBAction func savePressed(_ sender: Any) {
        keychainSave(str: textBox.text!)
    }
    @IBAction func deletePressed(_ sender: Any) {
        keychainDelete()
    }
    
}

