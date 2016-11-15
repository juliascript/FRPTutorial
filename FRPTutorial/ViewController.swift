//
//  ViewController.swift
//  FRPTutorial
//
//  Created by Julia on 11/11/16.
//  Copyright © 2016 Make school. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var name: String = "Julia"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func changeNameButtonTapped(_ sender: AnyObject) {
        print("changeNameButtonTapped")
        showAlertController()
    
    }
    
    
    func showAlertController() {
        let title = "Update Name"
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(cancelAction)
        let okAction = UIAlertAction(title: "OK", style: .default) { action in
            if let textInput = alert.textFields?.first?.text {
                self.name = textInput
                self.nameLabel.text = self.name
            }
        }
        alert.addTextField()
        alert.addAction(okAction)
        present(alert, animated: true)
    }

    
    
}

