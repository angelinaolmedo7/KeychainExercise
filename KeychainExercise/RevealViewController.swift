//
//  RevealViewController.swift
//  KeychainExercise
//
//  Created by Angelina Olmedo on 6/10/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import UIKit

class RevealViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textLabel.text = (presentingViewController as! ViewController).keychainReveal() ?? ""
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
