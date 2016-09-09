//
//  DetailVC.swift
//  MonAnNgayTet
//
//  Created by Do Lac Tuan on 9/9/16.
//  Copyright © 2016 Do Lac Tuan. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    var img : UIImageView!
    var image: UIImage!
    var nameLbl: UILabel!
    var name:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        
        // image
        img = UIImageView()
        img.image = image
        img.frame = CGRectMake(0, 100, 400, 200)
        
        // name
        nameLbl = UILabel()
        nameLbl.text = name
        nameLbl.textColor = UIColor.blackColor()
        nameLbl.frame = CGRectMake(-5, 300, 400, 200)
        nameLbl.font = UIFont.boldSystemFontOfSize(30)
        nameLbl.textAlignment = NSTextAlignment.Center
        
        
        self.view.addSubview(nameLbl)
        self.view.addSubview(img)
        
        
    }


}
