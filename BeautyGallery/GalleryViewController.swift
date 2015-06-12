//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by CJS on 15/6/13.
//  Copyright (c) 2015年 CJS. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController {

    @IBOutlet weak var beautyImage: UIImageView!
    
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let name = imageName {
            beautyImage.image = UIImage(named: name)
            
            switch name{
            case "fangbingbing":
                navigationItem.title = "范冰冰"
                break;
            case "libingbing":
                navigationItem.title = "李冰冰"
                break;
            case "wangfei":
                navigationItem.title = "王菲"
                break;
            case "yangmi":
                navigationItem.title = "杨幂"
                break;
                
            case "zhouxu":
                navigationItem.title = "周迅"
                break;
            default:
                navigationItem.title = "女神画廊"
                break;
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func shareTapped(sender: AnyObject) {
        var controller = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("share text")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
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
