//
//  ViewController.swift
//  Epicures.
//
//  Created by Alice on 7/19/19.
//  Copyright © 2019 Mallory. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    // MARK: Properties
    
    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var Password: UITextField!

    // MARK: Actions
    
    
    @IBAction func loginAction(_ sender: UIButton) {
        Auth.auth().signIn(withEmail: UserName.text!, password: Password.text!) { (user, error) in
            if error == nil{
                self.performSegue(withIdentifier: "LoginToMeal", sender: self)
            }
            else{
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

