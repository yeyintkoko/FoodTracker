//
//  ViewController.swift
//  FoodTracker
//
//  Created by AGD on 10/5/17.
//  Copyright © 2017 AGD. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true;
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
        textField.text = ""
    }
    
    //MARK: UIImagePickerControllerDelegate
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = getMaskText(label:"Ko Narya", id: 45)
        print("Hey you go!!")
    }
    
    func getMaskText(label: String, id: Int) -> String {
        return label + "-" + String(id)
    }


}

