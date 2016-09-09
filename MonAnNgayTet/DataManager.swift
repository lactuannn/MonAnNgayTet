//
//  DataManager.swift
//  MonAnNgayTet
//
//  Created by Do Lac Tuan on 9/9/16.
//  Copyright © 2016 Do Lac Tuan. All rights reserved.
//

import Foundation

class DataManager {
    
    var data = NSMutableArray()
    
    class var sharedInstance: DataManager {
        
        struct Static {
            
            static var onceToken: dispatch_once_t = 0
            
            static var instance: DataManager? = nil
            
        }
        
        dispatch_once(&Static.onceToken) {
            
            Static.instance = DataManager()
            
            let filePath = NSBundle.mainBundle().pathForResource("MonAn", ofType: "plist")
            
            let raw = NSDictionary(contentsOfFile: filePath!)
            
            let temp = NSMutableArray(capacity: raw!.count)
            
            for item in raw!
                
            {
                
                let monAn = MonAn(name: item.value.valueForKey("name") as! String, photo: item.value.valueForKey("photo") as! String)
                
                temp.addObject(monAn)
                
            }
            
            Static.instance?.data = NSMutableArray(array: temp)
            
        }
        
        return Static.instance!
        
    }
    
}