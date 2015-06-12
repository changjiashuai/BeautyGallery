//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by CJS on 15/6/13.
//  Copyright (c) 2015年 CJS. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {

    @IBOutlet weak var beautyImage: UIImageView!
    
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if imageName != nil{
            beautyImage.image = UIImage(named: imageName)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
