//
//  MyCellModel.swift
//  TestOne
//
//  Created by LE ROUX Benjamin on 21/03/2017.
//  Copyright © 2017 iim. All rights reserved.
//

import Foundation

class MyCellModel : NSObject
{
    var mTitle : String = ""
    var mSubTitle : String = ""
    
    class func createMyCellWithTitle (sTitle : String, sSubTitle : String) -> MyCellModel
    {
        let rObject = MyCellModel()
        rObject.mTitle = "name: \(sTitle)"
        rObject.mSubTitle = " --- \(sSubTitle)"
        return rObject
    }
}
