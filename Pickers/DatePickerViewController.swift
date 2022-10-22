//
//  ViewController.swift
//  Pickers
//
//  Created by Satender Yadav on 10/19/22.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var DatePickerControl: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       let date = NSDate()
       // Sets date
       DatePickerControl.setDate(date as Date, animated: false)
    }

    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }

    // Select Button to trigger event and display alert
    @IBAction func SelectButton_PressedEvent(_ sender: UIButton) {
        let date = DatePickerControl.date
                let message = "The date and time you selected is \(date)"
                let alert = UIAlertController(
                    title: "Date and Time Selected",
                    message: message,
                    preferredStyle: .alert)
                let action = UIAlertAction(
                    title: "That's so true!",
                    style: .default,
                    handler: nil)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
    }
}

