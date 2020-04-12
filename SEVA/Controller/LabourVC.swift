//
//  LabourVC.swift
//  SEVA
//
//  Created by Himanshu Joshi on 09/04/20.
//  Copyright © 2020 Himanshu Joshi. All rights reserved.
//

import UIKit
import MessageUI

var selectedLabourItem = [String]()
var selectedLabourItemText: String?

class LabourVC: UIViewController, MFMailComposeViewControllerDelegate {
        
    let scrollView: UIScrollView = {
        let v = UIScrollView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let labourLabel: UILabel = {
        let label = UILabel()
        label.text = "Work"
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
    
    let secondLabel: UILabel = {
        let label = UILabel()
        label.text = "PLEASE SELECT A WORK"
        label.font = UIFont(name: "Avenir", size: 25.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
    
    let labour1Label: UILabel = {
        let label = UILabel()
        label.text = "Plumber"
        label.font = UIFont(name: "Avenir", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labour2Label: UILabel = {
        let label = UILabel()
        label.text = "Carpenter"
        label.font = UIFont(name: "Avenir", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labour3Label: UILabel = {
        let label = UILabel()
        label.text = "Painter"
        label.font = UIFont(name: "Avenir", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labour4Label: UILabel = {
        let label = UILabel()
        label.text = "Dish Washer"
        label.font = UIFont(name: "Avenir", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labour1Btn: UISwitch = {
        let button = UISwitch()
        button.frame = CGRect(x: 260, y: 290, width: 15, height: 15)
        return button
    }()

    let labour2Btn: UISwitch = {
        let button = UISwitch()
        button.frame = CGRect(x: 260, y: 320, width: 15, height: 15)
        return button
    }()
    
    let labour3Btn: UISwitch = {
        let button = UISwitch()
        button.frame = CGRect(x: 260, y: 350, width: 15, height: 15)
        return button
    }()

    let labour4Btn: UISwitch = {
        let button = UISwitch()
        button.frame = CGRect(x: 260, y: 380, width: 15, height: 15)
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
        text.placeholder = "Enter Left Out Work"
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

        scrollView.addSubview(labourLabel)
        labourLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20.0).isActive = true
        labourLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0.0).isActive = true
        
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
        secondLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 260.0).isActive = true
        secondLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(labour1Label)
        labour1Label.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 290.0).isActive = true
        labour1Label.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(labour2Label)
        labour2Label.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 320.0).isActive = true
        labour2Label.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(labour3Label)
        labour3Label.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 350.0).isActive = true
        labour3Label.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(labour4Label)
        labour4Label.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 380.0).isActive = true
        labour4Label.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(labour1Btn)

        scrollView.addSubview(labour2Btn)
        
        scrollView.addSubview(labour3Btn)
        
        scrollView.addSubview(labour4Btn)
        
        scrollView.addSubview(thirdLabel)
        thirdLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 410.0).isActive = true
        thirdLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(textField)
        textField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.0).isActive = true
        textField.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 450.0).isActive = true

        scrollView.addSubview(saveButton)
        saveButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 470.0).isActive = true
        saveButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0.0).isActive = true
        saveButton.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -20.0).isActive = true
        saveButton.addTarget(self, action: #selector(savedLabour), for: .touchUpInside)

        self.hideKeyboardWhenTappedAround()
        
    }
    
    @objc func savedLabour() {
        
        if labour1Btn.isOn == true {
            selectedLabourItem.append("Plumber")
        } else if labour1Btn.isOn == false {
            //do nothing
        }
        
        if labour2Btn.isOn == true {
            selectedLabourItem.append("Carpenter")
        } else if labour2Btn.isOn == false {
            //do nothing
        }
        
        if labour3Btn.isOn == true {
            selectedLabourItem.append("Painter")
        } else if labour3Btn.isOn == false {
            //do nothing
        }
        
        if labour4Btn.isOn == true {
            selectedLabourItem.append("Dish Washer")
        } else if labour4Btn.isOn == false {
            //do nothing
        }
        
        let subject = "Work order by \(nameTextField.text!)"
        let messageBody = "Name: \(nameTextField.text!)\nPhone Number: \(phoneTextField.text!)\nAddress: \(addressTextField.text!)\nWork Order:\n\(selectedLabourItem)\nSecondary Needs:\n\(textField.text!)"
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
