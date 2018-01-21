//
//  ViewControllerPhoto.swift
//  FitMate
//
//  Created by John Fu on 1/20/18.
//  Copyright © 2018 Team Alabama. All rights reserved.
//

import UIKit
import Firebase

class ViewControllerPhoto: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var newUser = userData()

    @IBOutlet weak var myImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        print("photoscreen")
        newUser.printAll()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func completeProfileButtonPressed(_ sender: Any) {
        Auth.auth().createUser(withEmail: newUser.userEmail, password: newUser.userPassword) {
            (user, error) in
            
            if error != nil {
                print(error!)
            } else {
                //success
                print("registration successful!")
            }
        }
        
        Auth.auth().signIn(withEmail: newUser.userEmail, password: newUser.userPassword) { (user, error) in
            
            if error != nil {
                print(error!)
            } else {
                print("yay log in successful")
            }
        }
        
        let usersDB = Database.database().reference().child("Users")
        guard let myUserID = Auth.auth().currentUser?.uid else {return}
        let usersInfo = usersDB.child(myUserID)
        
        let usersMessage = ["UserName" : newUser.userName, "Email" : newUser.userEmail, "Gender" : newUser.userGender, "Number" : String(newUser.userNumber), "Birthday" : newUser.userBirthday, "Description" : newUser.description, "Weight" : String(newUser.weight), "FavoriteExercise" : newUser.favoriteExerciseAsString, "DaysAvail" : newUser.daysAvailableAsString, "TimeAvail" : newUser.timeAvailableAsString]
        
        usersInfo.setValue(usersMessage)
        
        self.performSegue(withIdentifier: "goToMainFromPhoto", sender: self)
    }
    
    @IBAction func takePhoto(_ sender: Any) {
       if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    @IBAction func pickPhoto(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            myImg.contentMode = .scaleToFill
            myImg.image = pickedImage
        }
        picker.dismiss(animated: true, completion: nil)
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
