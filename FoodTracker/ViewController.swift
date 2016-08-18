//
//  ViewController.swift
//  FoodTracker
//
//  Created by bokeadmin on 8/17/16.
//  Copyright © 2016 bokeadmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Handle the textfield's user input through delegate callbacks.
        nameTextField.delegate = self;
    }
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard
        textField.resignFirstResponder();
        return true;
    }
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text;
    }
    // MARK: Actions

    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default Text";
    }

}

