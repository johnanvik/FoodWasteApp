//
//  SecondViewController.swift
//  31.03.18Prototype5
//
//  Created by Samira Ali on 2018-03-31.
//  Copyright © 2018 Samira Ali. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    

    @IBOutlet var Input: [UITextField]!
    
    
    @IBAction func submitButton(_ sender: Any)
    {
        if text = "" {
            performSegue(withIdentifier: "segue", sender: self)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        var thirdController = segue.destination as! ThirdViewController
        thirdController.myString = Input.text
        
        func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

        func didReceiveMemoryWarning() {
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
}
}
}
