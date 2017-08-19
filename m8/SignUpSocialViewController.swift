//
//  SignUpSocialViewController.swift
//  m8
//
//  Created by Noah Spochart on 8/14/17.
//  Copyright © 2017 Noah Spochart. All rights reserved.
//

import UIKit

class SignUpSocialViewController: UIViewController {
    
    var signUpInfo: NSDictionary?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.init(colorLiteralRed: 141/255, green: 68/255, blue: 173/255, alpha: 1.0)
        NSLog((signUpInfo?.description)!)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createAccount(_ sender: Any) {
        sendSignUp()
    }
    func sendSignUp() {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.`
    }
    */

}
