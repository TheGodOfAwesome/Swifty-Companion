//
//  Authorise.swift
//  Swifty-Companion
//
//  Created by Kuzivakwashe MUVEZWA on 2018/10/16.
//  Copyright © 2018 Kuzivakwashe MUVEZWA. All rights reserved.
//

import Foundation

public class Authorise {
    
//    func appLogin() {
//        print("Authorising!");
//        let authEndPoint: String = "https://api.intra.42.fr/oauth/token"
//        let url = URL(string: authEndPoint)
//        var request = URLRequest(url: url!)
//        
//        request.httpMethod = "POST"
//        
//        request.httpBody =     "grant_type=client_credentials&client_id=fe6b5d1013c7372cb4f5f2184d1fea5f80241b0a38f011b243092ffbacb73a35&client_secret=d175f1ca71a908b07742eec622198c2ae6a1dcda494b04bdeaec62ad19af1103".data(using: String.Encoding.utf8)
//        
//        let session = URLSession.shared
//        var token:String = ""
//        session.dataTask(with: request) { (data, response, error) in
//            if let data = data {
//                do {
//                    let dictonary = try JSONSerialization.jsonObject(with: data, options: []) as? [String:AnyObject]
//                    
//                    if let tempToken = dictonary
//                    {
//                        token = (tempToken["access_token"] as! String)
//                        print("Token: \(token)")
//                    }
//                    
//                    
//                }catch let error {
//                    print(error)
//                }
//            }
//            }.resume()
//    }
//    
//    func userLogin(code:String) {
//        let authEndPoint: String = "https://api.intra.42.fr/oauth/token"
//        
//        let url = URL(string: authEndPoint)
//        var request = URLRequest(url: url!)
//        
//        request.httpMethod = "POST"
//        
//        let clientCredentials:String = "grant_type=client_credentials&client_id=67b7eeb41c9c77401dd69e3abcc8c91c6ad4ac24e492c763177f8cdadbf9911e&client_secret=5859bbd581f0aaf50b3f76820b6f98c49d0ab49c6474717cbd122063130ebc9d&code=" + code + "&redirect_uri=https:\\www.thiswebnoxist.co.za"
//        
//        request.httpBody = clientCredentials.data(using: String.Encoding.utf8)
//        
//        let session = URLSession.shared
//        token = ""
//        session.dataTask(with: request) { (data, response, error) in
//            if let data = data {
//                do {
//                    let dictonary = try JSONSerialization.jsonObject(with: data, options: []) as? [String:AnyObject]
//                    
//                    if let tempToken = dictonary
//                    {
//                        token = (tempToken["access_token"] as! String)
//                    }
//                    
//                    
//                }catch let error {
//                    print(error)
//                }
//            }
//            }.resume()
//    }
    
}
