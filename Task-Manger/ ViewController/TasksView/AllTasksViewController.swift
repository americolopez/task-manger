//
//  AllTasksViewController.swift
//  Task-Manger
//
//  Created by Americo Lopez on 5/16/18.
//  Copyright © 2018 Americo Lopez. All rights reserved.
//

import UIKit

class AllTasksViewController: UITableViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dueDateLabel: UILabel!
    @IBOutlet weak var daysLeftLabel: UILabel!
    
    var tasksManger = TasksManger().shared
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func unwindToAllTasks(segue: UIStoryboardSegue) { }

}
