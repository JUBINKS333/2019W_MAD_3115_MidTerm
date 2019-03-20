//
//  Student.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
import Foundation

class Student{
    var username:String
    var password:String
    

    init(){
        self.username=String()
        self.password=String()
       
    }
    init(uId:String,pass:String){
        self.username=uId
        
        
        self.password=pass
        
    }
    func verifyLogin(usId:String , pass:String) -> Bool{
        if(self.username == usId && self.password == pass){
            return true
        }
        else{
            return false
        }
    }
    
}
