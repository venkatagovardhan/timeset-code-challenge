//
//  ViewController.swift
//  TimeSetCodeChallenge
//
//  Created by Govardhan on 5/3/17.
//  Copyright © 2017 govardhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    
    let cellReusableIdentifier = "newsfeed"
    var arraylist:Array<String>=Array<String>()
    override func viewDidLoad() {
        
        let path = Bundle.main.path(forResource: "data", ofType: "plist")
        let mydict=NSDictionary(contentsOfFile: path!)
        
        
         arraylist = mydict!.object(forKey: "Newsfeed") as! [String]
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return arraylist.count
    }
  
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        
        
        let cell :TableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReusableIdentifier) as! TableViewCell
        
        
        
        cell.UserName.text=(arraylist[indexPath.row]["username"])
        cell.UserImage.image=UIImage(named: arraylist[indexPath.row]["userimage"])
        cell.BigImage.image=UIImage(named: arraylist[indexPath.row]["bigimage"])
        cell.SmallImage1.image=UIImage(named: arraylist[indexPath.row]["smallimage1"])
        cell.SmallImage2.image=UIImage(named: arraylist[indexPath.row]["smallimage2"])
        cell.SmallImage3.image=UIImage(named: arraylist[indexPath.row]["smallimage3"])
        cell.Post.text=(arraylist[indexPath.row]["username"])
        
        return cell
        
    }
    

}

