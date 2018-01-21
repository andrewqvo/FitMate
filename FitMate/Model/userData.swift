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
    var favoriteExcercise = ""
    var daysAvailable = ""
    var timeAvailable = ""
    
    
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
        favoriteExcercise = answer
    }
    func setDescription(answer: String)
    {
        description = answer
    }
    
    func printUserName()
    {
        print(userName)
    }
    func printUserEmail()
    {
        print(userEmail)
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
        print("user favorite excercise: ", favoriteExcercise)
        print("days user is available: ", daysAvailable)
        print("time user is avaliable: " ,timeAvailable)
}
}
