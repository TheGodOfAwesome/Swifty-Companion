//
//  User.swift
//  Swifty-Companion
//
//  Created by Kuzivakwashe MUVEZWA on 2018/10/16.
//  Copyright © 2018 Kuzivakwashe MUVEZWA. All rights reserved.
//

/* User call example
 {
 "id": 126,
 "begin_at": "2016-12-16T07:41:39.516Z",
 "end_at": null,
 "grade": "Cadet",
 "level": 0.0,
 "skills": [],
 "cursus_id": 2,
 "has_coalition": true,
 "user": {
 "id": 126,
 "login": "darthcae",
 "url": "https://api.intra.42.fr/v2/users/darthcae"
 },
 "cursus": {
 "id": 2,
 "created_at": "2017-11-22T13:41:00.825Z",
 "name": "42",
 "slug": "42"
 }
 }*/

import Foundation

struct User {
    var id: String;
    var displayname: String;
    var correction_point: String;
    var email: String;
    //var first_name: String;
    var image_url: String;
    //var last_name: String;
    var phone: String;
    var pool_year: String;
    var wallet: String;
    //var projects: String;
    //var skills: String;
}
