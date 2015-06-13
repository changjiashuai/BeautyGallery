//
//  KoreanViewController.swift
//  BeautyGallery
//
//  Created by CJS on 15/6/13.
//  Copyright (c) 2015年 CJS. All rights reserved.
//

import UIKit
import Social

class KoreanViewController: UIViewController {

    @IBOutlet weak var beautyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func facebookTapped(sender: AnyObject) {
        var controller = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        controller.setInitialText("facebook share text")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func twitterTapped(sender: AnyObject) {
        var controller = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("teitter share text")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }

    @IBAction func sinaWeiboTapped(sender: AnyObject) {
        var controller = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        controller.setInitialText("sinaWeibo share text")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
}
