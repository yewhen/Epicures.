//
//  RestaurantViewController.swift
//  Epicures.
//
//  Created by Alice on 7/29/19.
//  Copyright © 2019 Mallory. All rights reserved.
//

import UIKit
import FirebaseFirestore

    //Add a new document with a generated ID
    var ref: DocumentReference? = nil

    ref = db.collection("users").addDocument(data: [
        "first": "Ada",
        "last": "Lovelace",
        "born": 1815
    ]) { err in
        if let err = err {
            print("Error adding document: \(err)")
        } else {
            print("Document added with ID: \(ref!.documentID)")
        }
    }

    ref = db.collection("users").addDocument(data: [
        "first": "Alan",
        "middle": "Mathison",
        "last": "Turing",
        "born": 1912
    ]) { err in
        if let err = err {
            print("Error adding document: \(err)")
        } else {
            print("Document added with ID: \(ref!.documentID)")
        }
    }


class RestaurantViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
//    let collection = Firestore.firestore().collection("restaurants")
//
//    let restaurant = Restaurant(
//        name: name,
//        category: category,
//        city: city,
//        price: price,
//        ratingCount: 0,
//        averageRating: 0
//    )
//

}
