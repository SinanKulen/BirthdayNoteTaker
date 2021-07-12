//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Sinan Kulen on 15.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelBirthday: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var textBirthday: UITextField!
    @IBOutlet weak var textName: UITextField!
  
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey: "name")
        if let myName = storedName as? String {
            labelName.text = "Name : \(myName)"
        }
        
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        if let myBirthday = storedBirthday as? String{
            labelBirthday.text = "Birthday : \(myBirthday)"
        }
        
        
        }
    
    @IBAction func saveClicked(_ sender: Any) {
        UserDefaults.standard.set(textName.text!, forKey: "name")
        UserDefaults.standard.set(textBirthday.text!, forKey: "birthday")
        labelName.text = "Name : \(textName.text!)"
        labelBirthday.text = "Birthday : \(textBirthday.text!)"
    }
    
    
    
    let storedName = UserDefaults.standard.object(forKey: "name")
    let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
   
    @IBAction func deleteClicked(_ sender: Any) {
    
    if (storedName as? String) != nil {
        UserDefaults.standard.removeObject(forKey: "name")
        labelName.text = "Name : "
        }
    if (storedBirthday as? String) != nil{
        UserDefaults.standard.removeObject(forKey: "birthday")
        labelBirthday.text = "Birthday : "
        }
    }
        
        
    }
    
    


