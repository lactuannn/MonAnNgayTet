//
//  Cell.swift
//  MonAnNgayTet
//
//  Created by Do Lac Tuan on 9/9/16.
//  Copyright © 2016 Do Lac Tuan. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    var nameLbl: UILabel!
    var imageViewCell: UIImageView!
    var kCellWidth: CGFloat = 400
    var kCellHeight: CGFloat = 200
    var kLblHeight: CGFloat = 50
    
    func addSubView(){
        if(imageViewCell == nil){
            imageViewCell = UIImageView(frame: CGRectMake(0, 0, kCellWidth, kCellHeight))
            contentView.addSubview(imageViewCell)
        }
        
        if (nameLbl == nil){
            nameLbl = UILabel(frame: CGRectMake(0,0,kCellWidth,kLblHeight))
            nameLbl.textAlignment = .Left
            nameLbl.textColor = UIColor.redColor()
            nameLbl.font = UIFont.boldSystemFontOfSize(16)
            contentView.addSubview(nameLbl)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
