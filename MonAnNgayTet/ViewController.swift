//
//  ViewController.swift
//  MonAnNgayTet
//
//  Created by Do Lac Tuan on 9/9/16.
//  Copyright © 2016 Do Lac Tuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var dataManager = DataManager.sharedInstance
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! Cell
        
        let monAn = dataManager.data[indexPath.item] as! MonAn
        
        cell.kCellWidth = self.view.frame.size.width
        cell.addSubView()
        cell.imageViewCell.image = monAn.photo
        cell.nameLbl.text = monAn.name
        return cell
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete{
            //dataManager.data.removeObject(indexPath.item)
            dataManager.data.removeObjectAtIndex(indexPath.row)
            //tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
            
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let detailVC = DetailVC()
        
        let monAn = dataManager.data[indexPath.row] as! MonAn
        
        detailVC.image = monAn.photo
        
        detailVC.name = monAn.name
        
        navigationController?.pushViewController(detailVC, animated: true)
    }

}

