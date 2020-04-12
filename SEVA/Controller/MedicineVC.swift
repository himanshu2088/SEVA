//
//  MedicineVC.swift
//  SEVA
//
//  Created by Himanshu Joshi on 09/04/20.
//  Copyright © 2020 Himanshu Joshi. All rights reserved.
//

import UIKit
import MessageUI

var selectedMedicineItem = [String]()
var selectedMedicineItemText: String?

class MedicineVC: UIViewController, MFMailComposeViewControllerDelegate {
        
    let scrollView: UIScrollView = {
        let v = UIScrollView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let medLabel: UILabel = {
        let label = UILabel()
        label.text = "Medicines"
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
        label.text = "PLEASE SELECT Medicines"
        label.font = UIFont(name: "Avenir", size: 25.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let thirdLabel: UILabel = {
        let label = UILabel()
        label.text = "MORE DETAILS"
        label.font = UIFont(name: "Avenir", size: 25.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let med1Label: UILabel = {
        let label = UILabel()
        label.text = "Fever Medicines"
        label.font = UIFont(name: "Avenir", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let med2Label: UILabel = {
        let label = UILabel()
        label.text = "Cough Medicines"
        label.font = UIFont(name: "Avenir", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let med3Label: UILabel = {
        let label = UILabel()
        label.text = "Cold Medicines"
        label.font = UIFont(name: "Avenir", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let med4Label: UILabel = {
        let label = UILabel()
        label.text = "Loose Motions Medicines"
        label.font = UIFont(name: "Avenir", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let med1Btn: UISwitch = {
        let button = UISwitch()
        button.frame = CGRect(x: 260, y: 300, width: 15, height: 15)
        return button
    }()
    
    let med2Btn: UISwitch = {
        let button = UISwitch()
        button.frame = CGRect(x: 260, y: 330, width: 15, height: 15)
        return button
    }()

    let med3Btn: UISwitch = {
        let button = UISwitch()
        button.frame = CGRect(x: 260, y: 360, width: 15, height: 15)
        return button
    }()
    
    let med4Btn: UISwitch = {
        let button = UISwitch()
        button.frame = CGRect(x: 260, y: 390, width: 15, height: 15)
        return button
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

        scrollView.addSubview(medLabel)
        medLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20.0).isActive = true
        medLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0.0).isActive = true
        
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
        
        scrollView.addSubview(med1Label)
        med1Label.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 300.0).isActive = true
        med1Label.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(med2Label)
        med2Label.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 330.0).isActive = true
        med2Label.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(med3Label)
        med3Label.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 360.0).isActive = true
        med3Label.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(med4Label)
        med4Label.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 390.0).isActive = true
        med4Label.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(med1Btn)

        scrollView.addSubview(med2Btn)
        
        scrollView.addSubview(med3Btn)
        
        scrollView.addSubview(med4Btn)
        
        scrollView.addSubview(thirdLabel)
        thirdLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 420.0).isActive = true
        thirdLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(textField)
        textField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.0).isActive = true
        textField.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 460.0).isActive = true

        scrollView.addSubview(saveButton)
        saveButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 490.0).isActive = true
        saveButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0.0).isActive = true
        saveButton.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -20.0).isActive = true
        saveButton.addTarget(self, action: #selector(savedMed), for: .touchUpInside)
        
        
        self.hideKeyboardWhenTappedAround()
        
    }
    
    @objc func savedMed() {
        
        if med1Btn.isOn == true {
            selectedMedicineItem.append("Fever Medicines")
        } else if med1Btn.isOn == false {
            //do nothing
        }
        
        if med2Btn.isOn == true {
            selectedMedicineItem.append("Cough Medicines")
        } else if med2Btn.isOn == false {
            //do nothing
        }
        
        if med3Btn.isOn == true {
            selectedMedicineItem.append("Cold Medicines")
        } else if med3Btn.isOn == false {
            //do nothing
        }
        
        if med4Btn.isOn == true {
            selectedMedicineItem.append("Loose Motions Medicines")
        } else if med4Btn.isOn == false {
            //do nothing
        }
        
        let subject = "Medicine order by \(nameTextField.text!)"
        let messageBody = "Name: \(nameTextField.text!)\nPhone Number: \(phoneTextField.text!)\nAddress: \(addressTextField.text!)\nMedicine Order:\n\(selectedMedicineItem)\nSecondary Needs:\n\(textField.text!)"
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
