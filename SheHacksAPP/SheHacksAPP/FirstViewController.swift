//
//  FirstViewController.swift
//  SheHacksAPP
//
//  Created by Kavita Bassi on 2019-03-16.
//  Copyright © 2019 Kavita Bassi. All rights reserved.
//


import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var questionField: UITextField!
    
    private func configureTextFields(){
        nameField.delegate = self
        cityField.delegate = self
        questionField.delegate = self
        
    }
    
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(FirstViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func periodAlert(_ sender: UIButton) {
        print ("Scheduled period date!")}
    @IBAction func breastexamAlert(_ sender: UIButton) {
        print("You should perform a self-breast exam today.")
    }
    @IBAction func logSymptoms(_ sender: UIButton) {
        print("Your period is over! Log your symptoms.")
        
    }
}

extension FirstViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
    



