//
//  ViewController.swift
//  Swifty-Companion
//
//  Created by Kuzivakwashe MUVEZWA on 2018/10/16.
//  Copyright © 2018 Kuzivakwashe MUVEZWA. All rights reserved.
//

import UIKit
import SwiftyJSON

var Token : String = "";
var searchProfile:User? = nil;
var name = "";
var id = "";
var email = "";
var correction_point = "";
var image_url = "";
var phone = "";
var pool_year = "";
var wallet = "";

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!;
    
    @IBAction func SearchForStudentButton(_ sender: UIButton) {
        print("Start Search");
        if(userNameTextField.text != ""){
            getUser();
            if(name == "" && id == ""){
                let main = UIStoryboard.init(name: "Main", bundle: nil);
                let tabView = main.instantiateViewController(withIdentifier: "TabController");
                self.present(tabView, animated: true, completion: nil);
            }
        }
    }
    
    func setUpToken(token:String) {
        print(token);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
        appLogin();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func appLogin() {
        print("Authorising!");
        let authEndPoint: String = "https://api.intra.42.fr/oauth/token"
        let url = URL(string: authEndPoint)
        var request = URLRequest(url: url!)
        
        request.httpMethod = "POST"
        
        request.httpBody =     "grant_type=client_credentials&client_id=fe6b5d1013c7372cb4f5f2184d1fea5f80241b0a38f011b243092ffbacb73a35&client_secret=d175f1ca71a908b07742eec622198c2ae6a1dcda494b04bdeaec62ad19af1103".data(using: String.Encoding.utf8)
        
        let session = URLSession.shared
        token = ""
        session.dataTask(with: request) { (data, response, error) in
            if let data = data {
                do {
                    let dictonary = try JSONSerialization.jsonObject(with: data, options: []) as? [String:AnyObject]
                    
                    if let tempToken = dictonary
                    {
                        token = (tempToken["access_token"] as! String)
                        Token = token!;
                        print("Token: \(String(describing: token))")
                    }
                    
                    
                }catch let error {
                    print(error)
                }
            }
            }.resume()
    }
    
    func getUser() {
        print("Retrieving User!");
        let authEndPoint: String = "https://api.intra.42.fr/v2/users/\(String(describing: userNameTextField.text))"
        let url = URL(string: authEndPoint)
        
        
        var request = URLRequest(url: url!)
        print("Token: \(Token)")
        request.setValue("Bearer " + Token , forHTTPHeaderField: "Authorization")
        request.httpMethod = "GET"
        let session = URLSession.shared
        
        session.dataTask(with: request) { (data, response, error) in
            if let data = data {
                do{
                    //here Data Response received from a network request
                    let jsonResponse = try JSONSerialization.jsonObject(with:
                        data, options: [])
                    
                    let json = JSON(jsonResponse);
                    
                    id = "\(json["id"])";
                    name = "\(json["displayname"])";
                    email = "\(json["email"])";
                    correction_point = "\(json["correction_point"])";
                    image_url = "\(json["image_url"])";
                    phone = "\(json["phone"])";
                    pool_year = "\(json["pool_year"])";
                    wallet = "\(json["wallet"])";
                    
                    /*searchProfile?.id = "\(json["id"])";
                     searchProfile?.displayname = "\(json["displayname"].stringValue)";
                     name = "\(json["displayname"])";
                     searchProfile?.email = "\(json["email"])";
                     searchProfile?.correction_point = "\(json["correction_point"])";
                     searchProfile?.image_url = "\(json["image_url"])";
                     searchProfile?.phone = "\(json["phone"])";
                     searchProfile?.pool_year = "\(json["pool_year"])";
                     searchProfile?.wallet = "\(json["wallet"])";*/
                    
                    print("Id: \(json["id"])");
                    print("Name: \(json["displayname"])");
                    print("Email: \(json["email"])");
                    print("Correction Points: \(json["correction_point"])");
                    print("Image: \(json["image_url"])");
                    print("Phone: \(json["phone"])");
                    print("Cohort: \(json["pool_year"])");
                    print("Wallet: \(json["wallet"])");
                    
                    print("Id: \(String(describing: id))");
                    print("Name: \(String(describing: name))");
                    print("Email: \(String(describing: email))");
                    print("Correction Points: \(String(describing: correction_point))");
                    print("Image: \(String(describing: image_url))");
                    print("Phone: \(String(describing: phone))");
                    print("Cohort: \(String(describing: pool_year))");
                    print("Wallet: \(String(describing: wallet))");
                    
                } catch let parsingError {
                    print("Error", parsingError)
                }
            }
            }.resume()
    }
}
