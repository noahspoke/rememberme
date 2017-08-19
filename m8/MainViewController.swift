//
//  MainViewController.swift
//  m8
//
//  Created by Noah Spochart on 8/14/17.
//  Copyright © 2017 Noah Spochart. All rights reserved.
//

import UIKit
import BEMCheckBox

class MainViewController: UIViewController {

    @IBOutlet weak var twitterCheck: BEMCheckBox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        twitterCheck.delegate = self
        twitterCheck.onAnimationType = BEMAnimationType.fill
        twitterCheck.offAnimationType = BEMAnimationType.fill
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //self.performSegue(withIdentifier: "showLogin", sender: self)
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

extension MainViewController : BEMCheckBoxDelegate {
    func didTap(_ checkBox: BEMCheckBox) {
        NSLog(String(checkBox.on))
    }
}
