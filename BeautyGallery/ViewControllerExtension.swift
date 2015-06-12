//
//  ViewControllerExtension.swift
//  BeautyGallery
//
//  Created by CJS on 15/6/12.
//  Copyright (c) 2015年 CJS. All rights reserved.
//

import UIKit

extension ViewController: UIPickerViewDataSource{
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return beauties.count
    }
}

extension ViewController: UIPickerViewDelegate{
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        return beauties[row]
    }
}
