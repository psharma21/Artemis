//
//  SecondViewController.swift
//  SheHacksAPP
//
//  Created by Kavita Bassi on 2019-03-16.
//  Copyright © 2019 Kavita Bassi. All rights reserved.
import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var userNameField: UITextField!
    
    @IBOutlet weak var DOBField: UITextField!
    
    @IBOutlet weak var heightField: UITextField!
    
    @IBOutlet weak var weightField: UITextField!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        configureTextFields()
        configureTapGesture()
    }
    
    private func configureTextFields(){
        userNameField.delegate = self
        DOBField.delegate = self
        heightField.delegate = self
        weightField.delegate = self
        
    }
    
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(SecondViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
    @IBAction func createTapped(_ sender: Any) {
        view.endEditing(true)
    }
}

extension SecondViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}


