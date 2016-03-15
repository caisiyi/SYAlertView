//
//  ViewController.swift
//  SYAlertView
//
//  Created by 蔡斯仪 on 16/3/15.
//  Copyright © 2016年 caisiyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,SYAlertViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton()
        view.addSubview(btn)
        btn.backgroundColor = UIColor.orangeColor()
        btn.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        btn.addTarget(self, action: "btn", forControlEvents: UIControlEvents.TouchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func btn(){
        let vc = SYAlertViewController(items: ["1","2"])
        vc.delegate = self
        vc.addItemsAction { (sender) -> () in
            print("点击了-\(sender.tag)")
        }
        vc.addcancelAction { (sender) -> () in
            print("点击了取消")
        }
        presentViewController(vc, animated: true, completion: nil)
    }
    func ClickCancelItem(alertVC: SYAlertViewController) {
        print("delegate - 点击了取消")
    }
    func ClickChildItem(alertVC: SYAlertViewController, sender: UIButton, index: Int) {
        print("delegate - 点击了-\(index)")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

