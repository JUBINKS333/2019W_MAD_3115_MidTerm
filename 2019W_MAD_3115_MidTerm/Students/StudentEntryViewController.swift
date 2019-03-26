//
//  StudentEntryViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentEntryViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    
    let courseList=["MADT","QMT","LMT"]
    
    
    
    
    
    
    @IBOutlet weak var stdID: UITextField!
    
    @IBOutlet weak var stdName: UITextField!
    
    
    @IBOutlet weak var stdGender: UITextField!
    

 
    
    @IBOutlet weak var stdEmail: UITextField!
    
    @IBOutlet weak var stdBdate: UITextField!
    
    @IBOutlet weak var stdCourse: UIPickerView!
    
    @IBOutlet weak var mark1: UITextField!
    
    @IBOutlet weak var mark2: UITextField!
    
    
    @IBOutlet weak var mark3: UITextField!
    @IBOutlet weak var mark4: UITextField!
    
    @IBOutlet weak var mark5: UITextField!
    
    @IBOutlet weak var percentage: UITextField!
    
    @IBOutlet weak var totalmarks: UITextField!
    
    @IBOutlet weak var grade: UITextField!
    
    @IBAction func btnLogout(_ sender: Any) {
        
        
        
        
    }
    
    
    @IBAction func stdResult(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let resultVC = sb.instantiateViewController(withIdentifier: "resultVC")
        self.navigationController?.pushViewController(resultVC, animated: true)
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.stdCourse.delegate=self
        self.stdCourse.dataSource=self

       
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        
        return 3
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return courseList[row]
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
