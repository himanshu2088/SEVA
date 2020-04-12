//
//  ContactUsVC.swift
//  SEVA
//
//  Created by Himanshu Joshi on 12/04/20.
//  Copyright © 2020 Himanshu Joshi. All rights reserved.
//

import UIKit
import MessageUI

class ContactUsVC: UIViewController, MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white

    }
    
    @IBAction func himanshuEmail(_ sender: UIButton) {
        let toRecipents = ["himanshujoshi2088@gmail.com"]
        let mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setToRecipients(toRecipents)

        self.present(mc, animated: true, completion: nil)
    }
    
    @IBAction func khatriEmail(_ sender: UIButton) {
        let toRecipents = ["shubhamkhatri234@gmail.com"]
        let mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setToRecipients(toRecipents)

        self.present(mc, animated: true, completion: nil)
    }
    
    @IBAction func himanshuPhone(_ sender: UIButton) {
        let url: NSURL = URL(string: "TEL://9871097664")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func khatriPhone(_ sender: UIButton) {
        let url: NSURL = URL(string: "TEL://9616488892")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
}
