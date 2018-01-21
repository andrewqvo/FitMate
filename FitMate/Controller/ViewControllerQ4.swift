//
//  ViewControllerQ4.swift
//  FitMate
//
//  Created by John Fu on 1/20/18.
//  Copyright © 2018 Team Alabama. All rights reserved.
//

import UIKit

class ViewControllerQ4: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var Running: UIButton!
    @IBOutlet weak var WeightLifting: UIButton!
    @IBOutlet weak var Dancing: UIButton!
    @IBOutlet weak var Yoga: UIButton!
    @IBOutlet weak var Swimming: UIButton!
    @IBOutlet weak var Cycling: UIButton!
    
    
    @IBAction func RunningAction(_ sender: UIButton){
        if Running.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Running.backgroundColor = UIColor.green
            // add to array
        }
        else{
            Running.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
        }
    }
    
    @IBAction func WeightLiftingAction(_ sender: UIButton) {
        if WeightLifting.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
        WeightLifting.backgroundColor = UIColor.green
        // add to array
    }
        else{
            WeightLifting.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
        }
    }
    
    @IBAction func DancingAction(_ sender: UIButton) {
        if Dancing.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Dancing.backgroundColor = UIColor.green
            // add to array
        }
        else{
            Dancing.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
        }
    }
    
    @IBAction func YogaAction(_ sender: UIButton) {
        if Yoga.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Yoga.backgroundColor = UIColor.green
            // add to array
        }
        else{
            Yoga.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
        }
    }
    
    @IBAction func SwimmingAction(_ sender: UIButton) {
        if Swimming.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Swimming.backgroundColor = UIColor.green
            // add to array
        }
        else{
            Swimming.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
        }
    }
    
    @IBAction func CyclingAction(_ sender: UIButton) {
        if Cycling.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Cycling.backgroundColor = UIColor.green
            // add to array
        }
        else{
            Cycling.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
        }
    }
    
    var newUser = userData()

    @IBOutlet weak var favoriteExcercise: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        newUser.printAll()
        
        favoriteExcercise.delegate = self
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
    
    
    @IBAction func nextScreen(_ sender: Any) {
        newUser.setExcercise(answer: favoriteExcercise.text!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ViewControllerQ5 = segue.destination as? ViewControllerQ5 {
            ViewControllerQ5.newUser = self.newUser
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
