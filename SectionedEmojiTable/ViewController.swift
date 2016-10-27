//
//  ViewController.swift
//  SectionedEmojiTable
//
//  Created by Mariana Del Nogal on 10/6/16.
//  Copyright © 2016 Mariana Del Nogal. All rights reserved.
//

import UIKit

let valentines = ["😍","💌","🌹","🍫","🍷"]
let patricks = ["🍺","🍀","🌈","💰","💸"]
let easter = ["🐰","🐥","🌷","💐","💒"]
let cinco = ["🇲🇽","👨🏻","🌮","🌯","🍸"]
let independence = ["🇺🇸","🎩","💥","🎉","🍾"]
let halloween = ["🎃","👻","😈","🕷","🍭"]
let thanksgiving = ["🦃","🍗","🌽","🍴","🍂"]
let christmas = ["🎅🏼","🍪","🎁","🎄","⛄️"]

let red = UIColor(red: 253/255, green: 43/255, blue: 31/255, alpha: 1)
let red2 = UIColor(red: 253/255, green: 58/255, blue: 48/255, alpha: 1)
let red3 = UIColor(red: 253/255, green: 74/255, blue: 64/255, alpha: 1)
let red4 = UIColor(red: 254/255, green: 90/255, blue: 81/255, alpha: 1)
let red5 = UIColor(red: 254/255, green: 106/255, blue: 98/255, alpha: 1)
let red6 = UIColor(red: 254/255, green: 122/255, blue: 115/255, alpha: 1)
let redArray = [red2, red3, red4, red5, red6]

let green = UIColor(red: 0/255, green: 191/255, blue: 119/255, alpha: 1)
let green2 = UIColor(red: 47/255, green: 196/255, blue: 127/255, alpha: 1)
let green3 = UIColor(red: 54/255, green: 206/255, blue: 136/255, alpha: 1)
let green4 = UIColor(red: 67/255, green: 210/255, blue: 144/255, alpha: 1)
let green5 = UIColor(red: 81/255, green: 213/255, blue: 152/255, alpha: 1)
let green6 = UIColor(red: 95/255, green: 216/255, blue: 160/255, alpha: 1)
let greenArray = [green2, green3, green4, green5, green6]

let pink = UIColor(red: 243/255, green: 121/255, blue: 146/255, alpha: 1)
let pink2 = UIColor(red: 246/255, green: 152/255, blue: 172/255, alpha: 1)
let pink3 = UIColor(red: 247/255, green: 168/255, blue: 184/255, alpha: 1)
let pink4 = UIColor(red: 248/255, green: 183/255, blue: 197/255, alpha: 1)
let pink5 = UIColor(red: 250/255, green: 199/255, blue: 210/255, alpha: 1)
let pink6 = UIColor(red: 251/255, green: 215/255, blue: 222/255, alpha: 1)
let pinkArray = [pink2, pink3, pink4, pink5, pink6]

let blue = UIColor(red: 28/255, green: 39/255, blue: 255/255, alpha: 1)
let blue2 = UIColor(red: 45/255, green: 55/255, blue: 255/255, alpha: 1)
let blue3 = UIColor(red: 51/255, green: 71/255, blue: 255/255, alpha: 1)
let blue4 = UIColor(red: 79/255, green: 88/255, blue: 255/255, alpha: 1)
let blue5 = UIColor(red: 96/255, green: 104/255, blue: 255/255, alpha: 1)
let blue6 = UIColor(red: 113/255, green: 120/255, blue: 255/255, alpha: 1)
let blueArray = [blue2, blue3, blue4, blue5, blue6]

let orange = UIColor(red: 243/255, green: 115/255, blue: 35/255, alpha: 1)
let orange2 = UIColor(red: 244/255, green: 125/255, blue: 51/255, alpha: 1)
let orange3 = UIColor(red: 246/255, green: 135/255, blue: 68/255, alpha: 1)
let orange4 = UIColor(red: 247/255, green: 147/255, blue: 83/255, alpha: 1)
let orange5 = UIColor(red: 248/255, green: 156/255, blue: 100/255, alpha: 1)
let orange6 = UIColor(red: 247/255, green: 166/255, blue: 115/255, alpha: 1)
let orangeArray = [orange2, orange3, orange4, orange5, orange6]

let brown = UIColor(red: 202/255, green: 135/255, blue:57/255, alpha: 1)
let brown2 = UIColor(red: 206/255, green: 143/255, blue:70/255, alpha: 1)
let brown3 = UIColor(red: 210/255, green: 152/255, blue:83/255, alpha: 1)
let brown4 = UIColor(red: 213/255, green: 160/255, blue:97/255, alpha: 1)
let brown5 = UIColor(red: 217/255, green: 168/255, blue:110/255, alpha: 1)
let brown6 = UIColor(red: 220/255, green: 176/255, blue:124/255, alpha: 1)
let brownArray = [brown2, brown3, brown4, brown5, brown6]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//TableView Required Methods
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 8
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        if indexPath.section == 0 {
        let myCell = tableView.dequeueReusableCellWithIdentifier("myCell")
        myCell?.textLabel?.text = valentines[indexPath.row]
        myCell?.textLabel?.backgroundColor = redArray[indexPath.row]
        myCell?.detailTextLabel?.backgroundColor = redArray[indexPath.row]
        myCell?.contentView.backgroundColor = redArray[indexPath.row]
        myCell?.detailTextLabel?.text = "Face with look of triumph"
        return myCell!
        }
            
        else if indexPath.section == 1 {
            let myCell = tableView.dequeueReusableCellWithIdentifier("myCell2")
            myCell?.textLabel?.text = patricks[indexPath.row]
            myCell?.textLabel?.backgroundColor = greenArray[indexPath.row]
            myCell?.detailTextLabel?.backgroundColor = greenArray[indexPath.row]
            myCell?.contentView.backgroundColor = greenArray[indexPath.row]
            myCell?.detailTextLabel?.text = "Face with open mouth and cold sweat"
            return myCell!
            }
        
        
        else if indexPath.section == 2{
            let myCell = tableView.dequeueReusableCellWithIdentifier("myCell2")
            myCell?.textLabel?.text = easter[indexPath.row]
            myCell?.textLabel?.backgroundColor = pinkArray[indexPath.row]
            myCell?.detailTextLabel?.backgroundColor = pinkArray[indexPath.row]
            myCell?.contentView.backgroundColor = pinkArray[indexPath.row]
            myCell?.detailTextLabel?.text = "detial label blah blah"
            return myCell!
            
        }
            
        else if indexPath.section == 3{
            let myCell = tableView.dequeueReusableCellWithIdentifier("myCell2")
            myCell?.textLabel?.text = cinco[indexPath.row]
            myCell?.textLabel?.backgroundColor = greenArray[indexPath.row]
            myCell?.detailTextLabel?.backgroundColor = greenArray[indexPath.row]
            myCell?.contentView.backgroundColor = greenArray[indexPath.row]
            myCell?.detailTextLabel?.text = "detial label blah blah"
            return myCell!
            
        }
            
        else if indexPath.section == 4{
            let myCell = tableView.dequeueReusableCellWithIdentifier("myCell2")
            myCell?.textLabel?.text = independence[indexPath.row]
            myCell?.textLabel?.backgroundColor = blueArray[indexPath.row]
            myCell?.detailTextLabel?.backgroundColor = blueArray[indexPath.row]
            myCell?.contentView.backgroundColor = blueArray[indexPath.row]
            myCell?.detailTextLabel?.text = "detial label blah blah"
            return myCell!
            
        }
            
        else if indexPath.section == 5{
            let myCell = tableView.dequeueReusableCellWithIdentifier("myCell2")
            myCell?.textLabel?.text = halloween[indexPath.row]
            myCell?.textLabel?.backgroundColor = orangeArray[indexPath.row]
            myCell?.detailTextLabel?.backgroundColor = orangeArray[indexPath.row]
            myCell?.contentView.backgroundColor = orangeArray[indexPath.row]
            myCell?.detailTextLabel?.text = "detial label blah blah"
            return myCell!
            
        }
        
        else if indexPath.section == 6{
            let myCell = tableView.dequeueReusableCellWithIdentifier("myCell2")
            myCell?.textLabel?.text = thanksgiving[indexPath.row]
            myCell?.textLabel?.backgroundColor = brownArray[indexPath.row]
            myCell?.detailTextLabel?.backgroundColor = brownArray[indexPath.row]
            myCell?.contentView.backgroundColor = brownArray[indexPath.row]
            myCell?.detailTextLabel?.text = "detial label blah blah"
            return myCell!
            
        }
            
            
        else {
            let myCell = tableView.dequeueReusableCellWithIdentifier("myCell")
            myCell?.textLabel?.text = christmas[indexPath.row]
            myCell?.textLabel?.backgroundColor = redArray[indexPath.row]
            myCell?.detailTextLabel?.backgroundColor = redArray[indexPath.row]
            myCell?.contentView.backgroundColor = redArray[indexPath.row]
            myCell?.detailTextLabel?.text = "detial label blah blah"
            return myCell!
        }
        
    }
    
//    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        let myCGFloat = CGFloat(30)
//        return myCGFloat
//    }
  
    
//    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        
//        if section == 0 {
//        return "Valentine's Day / February 14"
//            
//        } else if section == 1 {
//            return "St. Patrick's Day / March 17"
//        }
//        else if section == 2 {
//            return "Easter Sunday / April 16"
//        }
//        else if section == 3 {
//            return "Cinco de Mayo / May 5"
//        }
//        else if section == 4 {
//            return "Independence Day / July 4"
//        }
//        else if section == 5 {
//            return "Halloween / October 31"
//        }
//        else if section == 6 {
//            return "Thanksgiving Day / November 24"
//        }
//        else {
//            return "Christmas Eve / December 24 "
//        }
//    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let header = tableView.dequeueReusableCellWithIdentifier("header")! as UITableViewCell
        
        if section == 0 {
        header.textLabel?.text = "Valentine's Day / February 14"
        header.textLabel?.textColor = UIColor.whiteColor()
        header.textLabel?.backgroundColor = red
        header.contentView.backgroundColor = red
        }
        
        else if section == 1 {
        header.textLabel?.text = "St. Patrick's Day / March 1"
        header.textLabel?.textColor = UIColor.whiteColor()
        header.textLabel?.backgroundColor = green
        header.contentView.backgroundColor = green
        }
        
        else if section == 2 {
            header.textLabel?.text = "Easter Sunday / April 16"
            header.textLabel?.textColor = UIColor.whiteColor()
            header.textLabel?.backgroundColor = pink
            header.contentView.backgroundColor = pink
        }
        
        else if section == 3 {
            header.textLabel?.text = "Cinco de Mayo / May 5"
            header.textLabel?.textColor = UIColor.whiteColor()
            header.textLabel?.backgroundColor = green
            header.contentView.backgroundColor = green
        }
        
        else if section == 4 {
            header.textLabel?.text = "Independence Day / July 4"
            header.textLabel?.textColor = UIColor.whiteColor()
            header.textLabel?.backgroundColor = blue
            header.contentView.backgroundColor = blue
        }
        
        else if section == 5 {
            header.textLabel?.text = "Halloween / October 31"
            header.textLabel?.textColor = UIColor.whiteColor()
            header.textLabel?.backgroundColor = orange
            header.contentView.backgroundColor = orange
        }
        
        else if section == 6 {
            header.textLabel?.text = "Thanksgiving Day / November 24"
            header.textLabel?.textColor = UIColor.whiteColor()
            header.textLabel?.backgroundColor = brown
            header.contentView.backgroundColor = brown
        }
        else if section == 7 {
            header.textLabel?.text = "Christmas Eve / December 24 "
            header.textLabel?.textColor = UIColor.whiteColor()
            header.textLabel?.backgroundColor = red
            header.contentView.backgroundColor = red
        }
        
        return header
        
    }
    

}

