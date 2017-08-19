//
//  SignUpViewController.swift
//  m8
//
//  Created by Noah Spochart on 8/14/17.
//  Copyright © 2017 Noah Spochart. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var genderSegment: UISegmentedControl!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    
    var userInfo: NSDictionary?

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    @IBAction func sendSocialSignIn(_ sender: Any) {
        self.performSegue(withIdentifier: "goToSocial", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSocial" {
            
            userInfo = ["name": nameField.text!, "gender": genderSegment.selectedSegmentIndex, "email": emailField.text!, "phone": phoneNumberField.text!]
            
            if let controller = segue.destination as? SignUpSocialViewController {
                controller.signUpInfo = userInfo
            }
        }
    }

    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
