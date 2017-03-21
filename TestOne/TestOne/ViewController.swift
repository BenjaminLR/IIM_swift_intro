//
//  ViewController.swift
//  TestOne
//
//  Created by LE ROUX Benjamin on 21/03/2017.
//  Copyright © 2017 iim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var mTitleLabel : UILabel?
    @IBOutlet var mSegmentedBar : UISegmentedControl?
    @IBOutlet var mSegmentedBarB : UISegmentedControl?
    
    @IBOutlet var mTableView : UITableView?
    
    var mData : MyDataModel = MyDataModel()
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        let tGroup : MyGroupModel = mData.mList[section] as! MyGroupModel
        return tGroup.mList.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let tCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let tGroup : MyGroupModel = mData.mList[indexPath.section] as! MyGroupModel
        let tCellData : MyCellModel = tGroup.mList[indexPath.row] as! MyCellModel
        
        tCell.textLabel?.text = tCellData.mTitle
        tCell.detailTextLabel?.text = tCellData.mSubTitle
        tCell.imageView?.image = tGroup.mImage
        
        return tCell
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int
    {
        return mData.mList.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        let tGroup : MyGroupModel = mData.mList[section] as! MyGroupModel
        return tGroup.mTitle
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mTitleLabel?.text = "Benjamin"
        
        ChangeColor(sSender : mSegmentedBar!)
        
        mData.addGroup(sGroup : MyGroupModel.createWithTitle(sTitle: "my data A", withAssetName: "Cocotier", withCellNumber: 10))
        mData.addGroup(sGroup : MyGroupModel.createWithTitle(sTitle: "my data B", withAssetName: "Shell", withCellNumber: 10))
        mData.addGroup(sGroup : MyGroupModel.createWithTitle(sTitle: "my data C", withAssetName: "Fish", withCellNumber: 10))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func IamRich ()
    {
        mTitleLabel?.text = "$$$"
    }

    @IBAction func ChangeColor (sSender : UISegmentedControl)
    {
        NSLog("log here")
        
//        if (mSegmentedBar?.selectedSegmentIndex == 0)
//        {
//            mTitleLabel?.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
//        }
//        else if (mSegmentedBar?.selectedSegmentIndex == 1)
//        {
//            mTitleLabel?.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
//        }
//        else{
//            mTitleLabel?.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
//        }
        
        switch sSender.selectedSegmentIndex {
        case 0:
            if (sSender == mSegmentedBar)
            {
                mTitleLabel?.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            }
            else if (sSender == mSegmentedBarB)
            {
                mTitleLabel?.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            }
            break
        case 1:
            if (sSender == mSegmentedBar)
            {
                mTitleLabel?.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            }
            else if (sSender == mSegmentedBarB)
            {
                mTitleLabel?.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            }
            break
        case 2:
            if (sSender == mSegmentedBar)
            {
                mTitleLabel?.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            }
            else if (sSender == mSegmentedBarB)
            {
                mTitleLabel?.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
            }
            break
        default:
            mTitleLabel?.text = "color error"
            break
        }
    }

}

