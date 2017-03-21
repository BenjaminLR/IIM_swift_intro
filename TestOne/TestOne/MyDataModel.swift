//
//  myDataModel.swift
//  TestOne
//
//  Created by LE ROUX Benjamin on 21/03/2017.
//  Copyright © 2017 iim. All rights reserved.
//

import Foundation

class MyDataModel : NSObject
{
    var mList : Array<NSObject> = []
    
    func addGroup (sGroup : MyGroupModel)
    {
        mList.append(sGroup)
    }
}
