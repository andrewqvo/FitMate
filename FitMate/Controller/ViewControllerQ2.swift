//
//  ViewControllerQ2.swift
//  FitMate
//
//  Created by John Fu on 1/20/18.
//  Copyright © 2018 Team Alabama. All rights reserved.
//

import UIKit

class ViewControllerQ2: UIViewController, UITextFieldDelegate {
    
    var newUser = userData()

    @IBOutlet weak var avalibilityInput: UITextField!
    // BUTTONS
    
    @IBOutlet weak var Sunday: UIButton!
    @IBOutlet weak var Monday: UIButton!
    @IBOutlet weak var Tuesday: UIButton!
    @IBOutlet weak var Wednesday: UIButton!
    @IBOutlet weak var Thursday: UIButton!
    @IBOutlet weak var Friday: UIButton!
    @IBOutlet weak var Saturday: UIButton!
    
    @IBAction func SundayAction(_ sender: UIButton) {
        if Sunday.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Sunday.backgroundColor = UIColor.green
            // add to array
        }
        else{
            Sunday.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
        }
    }
    
    @IBAction func MondayAction(_ sender: UIButton) {
        if Monday.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Monday.backgroundColor = UIColor.green
            // add to array
        }
        else{
            Monday.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
        }
    }
    
    @IBAction func Tuesday(_ sender: UIButton) {
        if Tuesday.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Tuesday.backgroundColor = UIColor.green
            // add to array
        }
        else{
            Tuesday.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
        }
    }
    
    @IBAction func WednesdayAction(_ sender: UIButton) {
        if Wednesday.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Wednesday.backgroundColor = UIColor.green
            // add to array
        }
        else{
            Wednesday.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
        }
    }
    
    @IBAction func ThursdayAction(_ sender: UIButton) {
        if Thursday.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Thursday.backgroundColor = UIColor.green
            // add to array
        }
        else{
            Thursday.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
        }
    }
    
    
    @IBAction func FridayAction(_ sender: UIButton) {
        if Friday.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Friday.backgroundColor = UIColor.green
            // add to array
        }
        else{
            Friday.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
        }
    }
    
    @IBAction func SaturdayAction(_ sender: UIButton) {
        if Saturday.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Saturday.backgroundColor = UIColor.green
            // add to array
        }
        else{
            Saturday.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("question 2 screen")
        newUser.printAll()
        
        avalibilityInput.delegate = self
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
        newUser.setDaysAvailable(answer: avalibilityInput.text!)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ViewControllerQ3 = segue.destination as? ViewControllerQ3 {
            ViewControllerQ3.newUser = self.newUser
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
