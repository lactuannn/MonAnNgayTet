//
//  MonAn.swift
//  MonAnNgayTet
//
//  Created by Do Lac Tuan on 9/9/16.
//  Copyright © 2016 Do Lac Tuan. All rights reserved.
//

import Foundation
import UIKit

class MonAn{

    var name: String?
    var photo: UIImage?
    
    init(name: String, photo: String){
        self.name = name
        self.photo = UIImage(named: "\(photo).jpg")
    }
    
}