//
//  ViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

   

    @IBOutlet weak var username: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func btnLogin(_ sender: Any) {
        
        
     let user = Student(uId: "admin", pass: "admin@123")
        let a = username.text
        let b = password.text
        
        
        if( user.verifyLogin(usId:a!, pass:b!)==true)
        
        {
            print("login success")
            
            //let sb=UIStoryboard(name: "Main", bundle: nil)
          //  let vc = storyboard?.instantiateViewController(withIdentifier: "studentVC") as Stude
           // self.navigationController?.pushViewController( "", animated: true)
            
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let studentDetailsVC = sb.instantiateViewController(withIdentifier: "studentVC")
            self.navigationController?.pushViewController(studentDetailsVC, animated: true)
        }
        else
        {
            print("login failed")
            
            //let alert = UIAlertController(title: "WARNING", message: "INVALID USER ID OR PASSWORD", preferredStyle: .alert)
            
            
           // self.present(alert, animated: true, completion: nil)
            
            
            let alert = UIAlertController(title: "WARNING", message: "Invalid Username or Password", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
           
            
            
            self.present(alert, animated: true)
            
        }
        
    }
    
    



    
    
}

