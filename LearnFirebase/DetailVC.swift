//
//  DetailVC.swift
//  LearnFirebase
//
//  Created by William Farley on 4/24/17.
//  Copyright © 2017 William Farley. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var listItem: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if listItem != nil {
            textField.text = listItem
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        listItem = textField.text
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    
}
