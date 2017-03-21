//
//  ViewController.swift
//  TestOne
//
//  Created by LE ROUX Benjamin on 21/03/2017.
//  Copyright © 2017 iim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mTitleLabel : UILabel?
    @IBOutlet var mSegmentedBar : UISegmentedControl?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mTitleLabel?.text = "Benjamin"
        
        ChangeColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func IamRich ()
    {
        mTitleLabel?.text = "$$$"
    }

    @IBAction func ChangeColor ()
    {
        NSLog("log here")
        
        if (mSegmentedBar?.selectedSegmentIndex == 0)
        {
            mTitleLabel?.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        }
        else if (mSegmentedBar?.selectedSegmentIndex == 1)
        {
            mTitleLabel?.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        else{
            mTitleLabel?.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
    }

}

