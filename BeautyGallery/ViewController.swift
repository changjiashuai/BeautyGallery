//
//  ViewController.swift
//  BeautyGallery
//
//  Created by CJS on 15/6/12.
//  Copyright (c) 2015年 CJS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beauties = ["范冰冰", "李冰冰", "王菲", "杨幂", "周迅"]
    
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GoToGallery"{
            let index = beautyPicker.selectedRowInComponent(0)
            switch(index){
            case 0:
                imageName = "fangbingbing"
                break;
            case 1:
                imageName = "libingbing"
                break;
            case 2:
                imageName = "wangfei"
                break;
            case 3:
                imageName = "yangmi"
                break;
            case 4:
                imageName = "zhouxu"
                break;
            default:
                imageName = nil
                break;
            }
            var vc = segue.destinationViewController as! GalleryViewController
            vc.imageName = imageName
        }
    }
    
    @IBAction func close(segue: UIStoryboardSegue){
        
    }
}

