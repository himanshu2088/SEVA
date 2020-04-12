//
//  DonationVC.swift
//  SEVA
//
//  Created by Himanshu Joshi on 09/04/20.
//  Copyright © 2020 Himanshu Joshi. All rights reserved.
//

import UIKit
import MessageUI

class DonationVC: UIViewController, MFMailComposeViewControllerDelegate {
    
    var selectedDonationItem = [String]()
    var selectedDonationText: String?
    
    let scrollView: UIScrollView = {
        let v = UIScrollView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let donationLabel: UILabel = {
        let label = UILabel()
        label.text = "Donation"
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
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "Date"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Avenir", size: 25.0)
        return label
    }()
    
    let dateTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Date of donation"
        textField.translatesAutoresizingMaskIntoConstraints = false
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
        label.text = "Availability Of"
        label.font = UIFont(name: "Avenir", size: 25.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let donation1Label: UILabel = {
        let label = UILabel()
        label.text = "Lunch"
        label.font = UIFont(name: "Avenir", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let donation2Label: UILabel = {
        let label = UILabel()
        label.text = "Dinner"
        label.font = UIFont(name: "Avenir", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let donation1Btn: UISwitch = {
        let button = UISwitch()
        button.frame = CGRect(x: 260, y: 360, width: 15, height: 15)
        return button
    }()

    let donation2Btn: UISwitch = {
        let button = UISwitch()
        button.frame = CGRect(x: 260, y: 390, width: 15, height: 15)
        return button
    }()
    
    let thirdLabel: UILabel = {
        let label = UILabel()
        label.text = "Capacity"
        label.font = UIFont(name: "Avenir", size: 25.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let textField: UITextField = {
        let text = UITextField()
        text.placeholder = "Enter Food Serve For How Much People"
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

        scrollView.addSubview(donationLabel)
        donationLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20.0).isActive = true
        donationLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0.0).isActive = true
        
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
        
        scrollView.addSubview(dateLabel)
        dateLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 200.0).isActive = true
        dateLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true

        scrollView.addSubview(dateTextField)
        dateTextField.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 240.0).isActive = true
        dateTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        dateTextField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20.0).isActive = true
        
        scrollView.addSubview(addressLabel)
        addressLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 270.0).isActive = true
        addressLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true

        scrollView.addSubview(addressTextField)
        addressTextField.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 310.0).isActive = true
        addressTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        addressTextField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20.0).isActive = true
        
        scrollView.addSubview(secondLabel)
        secondLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 330.0).isActive = true
        secondLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(donation1Label)
        donation1Label.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 360.0).isActive = true
        donation1Label.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(donation2Label)
        donation2Label.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 390.0).isActive = true
        donation2Label.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20.0).isActive = true
        
        scrollView.addSubview(donation1Btn)

        scrollView.addSubview(donation2Btn)
        
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
        
        if donation1Btn.isOn == true {
            selectedDonationItem.append("Lunch")
        } else if donation1Btn.isOn == false {
            //do nothing
        }
        
        if donation2Btn.isOn == true {
            selectedDonationItem.append("Dinner")
        } else if donation2Btn.isOn == false {
            //do nothing
        }
        
        let subject = "Donation by \(nameTextField.text!)"
        let messageBody = "Name: \(nameTextField.text!)\nPhone Number: \(phoneTextField.text!)\nDate: \(dateTextField.text!)\nAddress: \(addressTextField.text!)\nDonation:\n\(selectedDonationItem) for \(textField.text!)"
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
