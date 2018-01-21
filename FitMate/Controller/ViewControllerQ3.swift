//
//  ViewControllerQ3.swift
//  FitMate
//
//  Created by John Fu on 1/20/18.
//  Copyright © 2018 Team Alabama. All rights reserved.
//

import UIKit

class ViewControllerQ3: UIViewController,UITextFieldDelegate {
    
    var newUser = userData()
    
    @IBOutlet weak var timeOfDay: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newUser.printAll()
        timeOfDay.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func nextScreen(_ sender: UIButton) {
        newUser.setTimeAvailable(answer: timeOfDay.text!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ViewControllerQ4 = segue.destination as? ViewControllerQ4 {
            ViewControllerQ4.newUser = self.newUser
        }
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
