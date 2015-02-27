//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by tujiaw on 15/2/27.
//  Copyright (c) 2015年 tujiaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBorn: UITextField!
    @IBOutlet weak var zodiacImage: UIImageView!
    let zodiac_:[String] = ["8", "9", "10", "11", "0", "1", "2", "3", "4", "5", "6", "7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMyZodiac(sender: AnyObject) {
        yearOfBorn.resignFirstResponder()
        if let year = yearOfBorn.text.toInt() {
            zodiacImage.image = UIImage(named: zodiac_[year % zodiac_.count])
        } else {
            println("error number!")
        }
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        yearOfBorn.resignFirstResponder()
    }

}

