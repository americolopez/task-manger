//
//  NewTasks.swift
//  Task-Manger
//
//  Created by Americo Lopez on 5/16/18.
//  Copyright © 2018 Americo Lopez. All rights reserved.
//

import UIKit

class NewTasks: UIViewController , UIDatePicker {
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var DescriptionTextField: UITextField!
    @IBOutlet weak var datePIcker: UIDatePicker!
    
    var taskManger = TasksManger().shared
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func addTasksButton(_ sender: Any) {
        let task = Tasks()
        task.dueDate = datePIcker.date
        task.details = DescriptionTextField.text!
        task.name = NameTextField.text!
        self.performSegue(withIdentifier: "unwindToAllTasks", sender: self)
    }
    
    
    
    

   

}


