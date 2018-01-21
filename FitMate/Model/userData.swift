//
//  userData.swift
//  ViewControllerOperation
//
//  Created by John Fu on 1/20/18.
//  Copyright © 2018 John Fu. All rights reserved.
//

import Foundation
class userData{
    var userName: String?
    var userEmail: String?
    var userPassword: String?
    var userGender: String?
    
    struct dateOfBirth{
        var month = 0
        var day = 0
        var year = 0
    }
    
    var userBirthday = dateOfBirth()
    
    var questionOne: String?
    var questionTwo: String?
    var questionThree: String?
    
    var booleanValue = true {
        didSet {
            print(booleanValue)
        }
    }
    
    init(){
        
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
    
    func setBirthday(day : Int, month : Int, year : Int)
    {
        userBirthday.day = day
        userBirthday.month = month
        userBirthday.year = year
    }
    
    func setQuestionOne(answer : String){
        questionOne = answer
    }
    func setQuestionTwo(answer : String){
        questionTwo = answer
    }
    func setQuestionThree(answer : String){
        questionThree = answer
    }
    
    func printUserName()
    {
        print(userName)
    }
    func printUserEmail()
    {
        print(userEmail)
    }
//    func printAll()
//    {
//        print(userName,userEmail,userPassword,userGender)
//        print(userBirthday.day,userBirthday.month,userBirthday.year)
//        print(questionOne)
//        print(questionTwo)
//        print(questionThree)
//}
}
