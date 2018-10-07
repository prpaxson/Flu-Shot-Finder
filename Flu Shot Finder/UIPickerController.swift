//
//  UIPickerController.swift
//  Flu Shot Finder
//
//  Created by Patrick Paxson on 10/6/18.
//  Copyright © 2018 Patrick Paxson. All rights reserved.
//

import UIKit

class UIPickerController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    @IBOutlet weak var yn: UIPickerView!
    @IBOutlet weak var ynLabel: UILabel!
    let pickerData = ["Yes","No"]
    override func viewDidLoad() {
        super.viewDidLoad()
        yn.dataSource = self
        yn.delegate = self
    }
    
}
