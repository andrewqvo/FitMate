//
//  userData.swift
//  ViewControllerOperation
//
//  Created by John Fu on 1/20/18.
//  Copyright © 2018 John Fu. All rights reserved.
//

import Foundation
class userData{
    var userName = ""
    var userEmail = ""
    var userPassword = ""
    var userGender = ""
    var userNumber = 0
//
//    struct dateOfBirth{
//        var month = 0
//        var day = 0
//        var year = 0
//    }
    
    var userBirthday = " "
    
   // var userBirthday = dateOfBirth()
    
    
    var description = ""
    var weight = 0
    var favoriteExcercise = Set<String>()
    var daysAvailable = ""
    var timeAvailable = ""
    
    var favoriteExerciseAsString = ""
    
    init(){
        
    }
    
    func setUserNumber(number : Int ){
        userNumber = number
    }
    
    func setUserName(setName : String ){
        userName = setName
    }
    
    func setUserEmail(setEmail : String ){
        userEmail = setEmail
    }
    
    func setUserPassword(password : String )
    {
        userPassword = password
    }
    
    func setGender(gender : String){
        userGender = gender
    }
    
//    func setBirthday(day : Int, month : Int, year : Int)
//    {
//        userBirthday.day = day
//        userBirthday.month = month
//        userBirthday.year = year
//    }
    func setBirthday(date: String)
    {
        userBirthday = date
    }
    
    func setWeight(answer : Int){
         weight = answer
    }
    func setDaysAvailable(answer : String){
        daysAvailable = answer
    }
    func setTimeAvailable(answer : String){
        timeAvailable = answer
    }
    func setExcercise(answer : String){
        favoriteExcercise.insert(answer)
    }
    func removeFromExcercise(answer: String){
        if(favoriteExcercise.contains(answer)){
            favoriteExcercise.remove(answer)
        }
    }
    
    func setDescription(answer: String)
    {
        description = answer
    }
    
    func convertExcercise()
    {
        for i in favoriteExcercise{
            favoriteExerciseAsString += i + " "
        }
    }
    
    func printUserName()
    {
        print(userName)
    }
    func printUserEmail()
    {
        print(userEmail)
    }
    
    func printExcercise()
    {
        for i in favoriteExcercise{
            print("user favorite excercise: ", i)
        }
    }
    
    
    func printAll()
    {
        print("username: ", userName)
        print("useremail: ", userEmail)
        print("user password: ",userPassword)
        print("user Gender: ", userGender)
       //print(userBirthday.day,userBirthday.month,userBirthday.year)
        print("user birthday: ", userBirthday)
        print("user phone Number: ", userNumber)
        print("user weight: ", weight)
        print("user description: ",  description)
        for i in favoriteExcercise{
            print("user favorite excercise: ", i)
        }
        
        
        print("days user is available: ", daysAvailable)
        print("time user is avaliable: " ,timeAvailable)
}
}
