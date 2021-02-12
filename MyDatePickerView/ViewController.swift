//
//  ViewController.swift
//  MyDatePickerView
//
//  Created by Alok Kumar Naik on 10/02/2021.
//

import UIKit

class ViewController: UIViewController{
    

    @IBOutlet weak var myTitle: UILabel!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //dateFormatter.dateFormat = "dd/MM/yyyy"
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        myDatePicker.datePickerMode = .dateAndTime
        myTitle.text = dateFormatter.string(from: myDatePicker.date)
        //myTitle.text = myDatePicker
    }

    @IBAction func datePickerChanged(_ sender: UIDatePicker) {
        
        myTitle.text = dateFormatter.string(from: sender.date)
        view.endEditing(true)
        
    }
    
}

