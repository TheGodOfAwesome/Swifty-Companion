//
//  ProfileViewController.swift
//  Swifty-Companion
//
//  Created by Kuzivakwashe MUVEZWA on 2018/10/16.
//  Copyright © 2018 Kuzivakwashe MUVEZWA. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UIDelegate{

    var apiService:ApiService?;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        print("Id: \(String(describing: id))");
        print("Name: \(String(describing: name))");
        print("Email: \(String(describing: email))");
        print("Correction Points: \(String(describing: correction_point))");
        print("Image: \(String(describing: image_url))");
        print("Phone: \(String(describing: phone))");
        print("Cohort: \(String(describing: pool_year))");
        print("Wallet: \(String(describing: wallet))");
        print("Login: \(String(describing: login))");
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
