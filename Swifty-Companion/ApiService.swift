//
//  ApiService.swift
//  Swifty-Companion
//
//  Created by Kuzivakwashe MUVEZWA on 2018/10/16.
//  Copyright © 2018 Kuzivakwashe MUVEZWA. All rights reserved.
//

import Foundation


var token:String?

class ApiService {
    var tokenn:String?
    var userInterface:UIDelegate?
    
    init(token:String, userInterface:UIDelegate) {
        self.tokenn = token
        self.userInterface = userInterface
    }
    
    func getUser() {
        print("Retrieving User!");
        let authEndPoint: String = "https://api.intra.42.fr/v2/users/kmuvezwa"
        let url = URL(string: authEndPoint)
        
        
        var request = URLRequest(url: url!)
        request.setValue("Bearer " + tokenn! , forHTTPHeaderField: "Authorization")
        request.httpMethod = "GET"
        let session = URLSession.shared
        
        session.dataTask(with: request) { (data, response, error) in
            if let data = data { 
                print(data);
                print(response!);
                print(error!)
                
                /*do {
                    print(data);
                    print(response!);
                }catch let error {
                    print(error)
                }*/
            }
        }.resume()
    }
}
