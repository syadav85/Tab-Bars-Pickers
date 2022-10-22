//
//  SingleComponentPickerViewController.swift
//  Pickers
//
//  Created by Satender Yadav on 10/19/22.
//

import UIKit

class SingleComponentPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Picker Data Source Methods
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return characterNames.count
    }
    
    //Picker Delegate Methods
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return characterNames[row]
    }
    
    // Select button to trigger even selection
    @IBAction func SelectButton_Pressed(_ sender: UIButton) {
    let row = singlePicker.selectedRow(inComponent: 0)
    let selected = characterNames[row]
    let title = "You selected \(selected)!"
    
    let alert = UIAlertController(
        title: title,
        message: "Thank you for choosing",
        preferredStyle: .alert)
    let action = UIAlertAction(
        title: "You're welcome",
        style: .default,
        handler: nil)
    alert.addAction(action)
    present(alert, animated: true, completion: nil)
    }
    
    // Picker with name options
    @IBOutlet weak var singlePicker: UIPickerView!
    private let characterNames = [
            "Luke", "Leia", "Han", "Chewbacca", "Artoo",
            "Threepio", "Lando"]
}
