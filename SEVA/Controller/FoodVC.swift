//
//  FoodVC.swift
//  SEVA
//
//  Created by Himanshu Joshi on 09/04/20.
//  Copyright © 2020 Himanshu Joshi. All rights reserved.
//

import UIKit
import MessageUI

var selectedFoodItem = [String]()
var selectedFoodItemText: String?

class FoodVC: UIViewController, MFMailComposeViewControllerDelegate {
    
    let scrollView: UIScrollView = {
        let v = UIScrollView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let foodLabel: UILabel = {
        let label = UILabel()
        label.text = "Food"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Avenir", size: 35.0)
        return label
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Avenir", size: 25.0)
        return label
    }()
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter your name"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let phoneLabel: UILabel = {
        let label = UILabel()
        label.text = "Phone"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Avenir", size: 25.0)
        return label
    }()
    
    let phoneTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter your phone number"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .numberPad
        return textField
    }()

    let addressLabel: UILabel = {
        let label = UILabel()
        label.text = "Address"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Avenir", size: 25.0)
        return label
    }()
    
    let addressTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter your address"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let secondLabel: UILabel = {
        let label = UILabel()
        label.text = "PLEASE SELECT FOOD"
        label.font = UIFont(name: "Avenir", size: 25.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let flourLabel: UILabel = {
        let label = UILabel()
        label.text = "Wheat Flour"
        label.font = UIFont(name: "Avenir", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let riceLabel: UILabel = {
        let label = UILabel()
        label.text = "Rice"
        label.font = UIFont(name: "Avenir", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let dalLabel: UILabel = {
        let label = UILabel()
        label.text = "Dal"
        label.font = UIFont(name: "Avenir", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let milkLabel: UILabel = {
        let label = UILabel()
        label.text = "Milk"
        label.font = UIFont(name: "Avenir", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sugarLabel: UILabel = {
        let label = UILabel()
        label.text = "Sugar"
        label.font = UIFont(name: "Avenir", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let spicesLabel: UILabel = {
        let label = UILabel()
        label.text = "Spices"
        label.font = UIFont(name: "Avenir", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let flourBtn: UISwitch = {
        let button = UISwitch()
        button.frame = CGRect(x: 260, y: 310, width: 15, height: 15)
        return button
    }()

    let riceBtn: UISwitch = {
        let button = UISwitch()
        button.frame = CGRect(x: 260, y: 340, width: 15, height: 15)
        return button
    }()

    let dalBtn: UISwitch = {
        let button = UISwitch()
        button.frame = CGRect(x: 260, y: 370, width: 15, height: 15)
        return button
    }()

    let milkBtn: UISwitch = {
        let button = UISwitch()
        button.frame = CGRect(x: 260, y: 400, width: 15, height: 15)
        return button
    }()

    let sugarBtn: UISwitch = {
        let button = UISwitch()
        button.frame = CGRect(x: 260, y: 430, width: 15, height: 15)
        return button
    }()
    
    let spicesBtn: UISwitch = {
        let button = UISwitch()
        button.frame = CGRect(x: 260, y: 460, width: 15, height: 15)
        return button
    }()
    
    let thirdLabel: UILabel = {
        let label = UILabel()
        label.text = "MORE DETAILS"
        label.font = UIFont(name: "Avenir", size: 25.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let textField: UITextField = {
        let text = UITextField()
        text.placeholder = "Enter Left Out Items"
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Save", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont(name: "Avenir", size: 20.0)
        return button
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        self.view.addSubview(scrollView)

        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0.0).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0.0).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0.0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0.0).isActive = true

        scrollView.addSubview(foodLabel)
        foodLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20.0).isActive = true
        foodLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0.0).isActive = true
        
        scrollView.addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 60.0).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true

        scrollView.addSubview(nameTextField)
        nameTextField.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 100.0).isActive = true
        nameTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20.0).isActive = true
        
        scrollView.addSubview(phoneLabel)
        phoneLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 130.0).isActive = true
        phoneLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true

        scrollView.addSubview(phoneTextField)
        phoneTextField.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 170.0).isActive = true
        phoneTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        phoneTextField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20.0).isActive = true

        scrollView.addSubview(addressLabel)
        addressLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 200.0).isActive = true
        addressLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true

        scrollView.addSubview(addressTextField)
        addressTextField.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 240.0).isActive = true
        addressTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        addressTextField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20.0).isActive = true
        
        scrollView.addSubview(secondLabel)
        secondLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 270.0).isActive = true
        secondLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(flourLabel)
        flourLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 310.0).isActive = true
        flourLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(riceLabel)
        riceLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 340.0).isActive = true
        riceLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(dalLabel)
        dalLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 370.0).isActive = true
        dalLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(milkLabel)
        milkLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 400.0).isActive = true
        milkLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(sugarLabel)
        sugarLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 430.0).isActive = true
        sugarLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(spicesLabel)
        spicesLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 460.0).isActive = true
        spicesLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(flourBtn)

        scrollView.addSubview(riceBtn)
        
        scrollView.addSubview(dalBtn)
        
        scrollView.addSubview(milkBtn)
        
        scrollView.addSubview(sugarBtn)
        
        scrollView.addSubview(spicesBtn)
        
        scrollView.addSubview(thirdLabel)
        thirdLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 490.0).isActive = true
        thirdLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(textField)
        textField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.0).isActive = true
        textField.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 520.0).isActive = true

        scrollView.addSubview(saveButton)
        saveButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 550.0).isActive = true
        saveButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0.0).isActive = true
        saveButton.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -20.0).isActive = true
        saveButton.addTarget(self, action: #selector(savedFood), for: .touchUpInside)
        
        self.hideKeyboardWhenTappedAround()

    }
    
    @objc func savedFood() {
        
        if flourBtn.isOn == true {
            selectedFoodItem.append("Wheat Flour")
        } else if flourBtn.isOn == false {
            //do nothing
        }
        
        if riceBtn.isOn == true {
            selectedFoodItem.append("Rice")
        } else if riceBtn.isOn == false {
            //do nothing
        }
        
        if dalBtn.isOn == true {
            selectedFoodItem.append("Dal")
        } else if dalBtn.isOn == false {
            //do nothing
        }
        
        if milkBtn.isOn == true {
            selectedFoodItem.append("Milk")
        } else if milkBtn.isOn == false {
            //do nothing
        }
        
        if sugarBtn.isOn == true {
            selectedFoodItem.append("Sugar")
        } else if sugarBtn.isOn == false {
            //do nothing
        }
        
        if spicesBtn.isOn == true {
            selectedFoodItem.append("Spices")
        } else if spicesBtn.isOn == false {
            //do nothing
        }
        
        let subject = "Food order by \(nameTextField.text!)"
        let messageBody = "Name: \(nameTextField.text!)\nPhone Number: \(phoneTextField.text!)\nAddress: \(addressTextField.text!)\nFood Order:\n\(selectedFoodItem)\nSecondary Needs:\n\(textField.text!)"
        let toRecipents = ["himanshujoshi2088@gmail.com"]
        let mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setSubject(subject)
        mc.setMessageBody(messageBody, isHTML: false)
        mc.setToRecipients(toRecipents)

        self.present(mc, animated: true, completion: nil)
        
    }
    
    //Hide Keyboard Function
    
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(disissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func disissKeyboard() {
        view.endEditing(true)
    }

    
}
