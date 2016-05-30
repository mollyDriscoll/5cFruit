//
//  ViewController.swift
//  5cFruit
//
//  Created by Molly Driscoll on 5/17/16.
//  Copyright © 2016 mdriscoll. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var map: MapView!
    @IBOutlet weak var fruitTable :UITableView!
    @IBOutlet weak var showRipeButton: UIBarButtonItem!

    
    
    // This value matches the left menu's width in the Storyboard
    let leftMenuWidth:CGFloat = 180
    var fruits = [Fruit]()
    var showRipeOnly = false
    var ripeFruits = [Fruit]()
    var unRipeFruits = [Fruit]()
    
        
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dispatch_async(dispatch_get_main_queue()) {
            self.closeMenu(false)
        }
        

        //print(view.bounds.size.width)
        
        let height = view.bounds.size.height - (self.navigationController?.navigationBar.frame.size.height)!
        
        map.updateMinZoomScaleForSize(CGSize(width: view.bounds.size.width, height: height))
        
        map.updateConstraintsForSize(CGSize(width: view.bounds.size.width, height: height))
    
        
        
        self.fruits = [Fruit(name: "Apples", seasons: [7,8,9,10,11], index: 0, color: UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0))]
        fruits.append(Fruit(name: "Apricot", seasons: [5,6], index: 1, color: UIColor(red: 234/255, green: 153/255, blue: 110/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Avocados", seasons: [11,12,1,2,4,5,6,7,8,9], index: 2, color: UIColor(red: 0/255, green: 71/255, blue: 3/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Blood Oranges", seasons: [12,1,2,3,4,5], index: 3, color: UIColor(red: 175/255, green: 33/255, blue: 33/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Figs", seasons: [7,8,9], index: 4, color: UIColor(red: 214/255, green: 154/255, blue: 244/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Grapefruit",seasons: [11,12,1,2,3,4,5,6,7,8,9], index: 5, color: UIColor(red: 249/255, green: 109/255, blue: 87/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Grapes", seasons: [5,6,7,8,9,10,11], index: 6, color: UIColor(red: 121/255, green: 47/255, blue: 153/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Guava", seasons: [], index: 7, color: UIColor(red: 0/255, green: 186/255, blue: 186/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Kumquats", seasons: [], index: 8, color: UIColor(red: 255/255, green: 150/255, blue: 30/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Lemons", seasons: [11,12,1,2,3,4,5,6,7,8,9,10], index: 9, color: UIColor(red: 248/255, green: 252/255, blue: 30/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Limes", seasons: [], index: 10, color: UIColor(red: 101/255, green: 237/255, blue: 28/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Loquats", seasons: [], index: 11, color: UIColor(red: 58/255, green: 21/255, blue: 181/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Nut Trees",seasons: [], index: 12, color: UIColor(red: 25/255, green: 255/255, blue: 255/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Olives", seasons: [], index: 13, color: UIColor(red: 54/255, green: 122/255, blue: 42/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Oranges", seasons: [11,12,1,2,3,4], index: 14, color: UIColor(red: 255/255, green: 110/255, blue: 0/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Peaches", seasons: [5,6,7,8,9], index: 15, color: UIColor(red: 239/255, green: 69/255, blue: 140/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Persimmons", seasons: [], index: 16, color: UIColor(red: 70/255, green: 163/255, blue: 244/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Pineapple Guava", seasons: [], index: 17, color: UIColor(red: 255/255, green: 219/255, blue: 76/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Plums", seasons: [5,6,7,8,9],index: 18, color: UIColor(red: 117/255, green: 0/255, blue: 115/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Pomegranates", seasons: [9,10,11], index: 19, color: UIColor(red: 102/255, green: 0/255, blue: 1/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Pomelos", seasons: [], index: 20, color: UIColor(red: 58/255, green: 255/255, blue: 140/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Rosemary", seasons: [], index: 21, color: UIColor(red: 27/255, green: 119/255, blue: 30/255, alpha: 1.0)))
        //fruits.append(Fruit(name: "Sapotes", seasons: [], index: 22, color: UIColor.blueColor()))
        fruits.append(Fruit(name: "Strawberry Guava", seasons: [], index: 22, color: UIColor(red: 247/255, green: 126/255, blue: 140/255, alpha: 1.0)))
        fruits.append(Fruit(name: "Strawberries", seasons: [11,12,1,2,3,4,5,6,7,8,9,10], index: 23, color: UIColor(red: 253/255, green: 135/255, blue: 255/255, alpha: 1.0)))
        //fruits.append(Fruit(name: "Tangelos", seasons: [], index: 25, color: UIColor.blueColor()))
   
        map.nodeInit(fruits)

        setRipeFruits()
        
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func closeMenuViaNotification(){
        closeMenu()
    }
    
    // Use scrollview content offset-x to slide the menu.
    func closeMenu(animated:Bool = true){
        scrollView.setContentOffset(CGPoint(x: leftMenuWidth, y: 0), animated: animated)
    }
    
    func toggleMenu(){
        scrollView.contentOffset.x == 0  ? closeMenu() : openMenu()
    }
    
    func openMenu(){
        scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
    
    func rotated(){
        if UIDeviceOrientationIsLandscape(UIDevice.currentDevice().orientation) {
            dispatch_async(dispatch_get_main_queue()) {
                print("closing menu on rotate")
                self.closeMenu()
            }
        }
    }
    
    @IBAction func toggleRipe(){
        if(showRipeOnly){
            showRipeOnly = false
            self.navigationItem.leftBarButtonItem?.title = "Ripe Only"
//            //for fruit in unRipeFruits{
//                //change 0 to fruitindex
//                for node in map.nodes[0]{
//                    node.hide()
//                }
//            }
        }else{
            showRipeOnly = true
            self.navigationItem.leftBarButtonItem?.title = "Showing Ripe"
//            //for fruit in unRipeFruits{
//                //change 0 to fruit index
//                for node in map.nodes[0]{
//                    node.hide()
//                }
//            //}
        }
        fruitTable.reloadData()

    }
    
    
    func setRipeFruits(){
        
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Day , .Month , .Year], fromDate: date)
        let currentMonth = components.month
        for fruit in fruits{
            for month in fruit.seasons {
                if month == currentMonth{
                    ripeFruits.append(fruit)
                }
                else{
                    unRipeFruits.append(fruit)
                }
            }
        }
    }
    
    
}

extension ViewController : UIScrollViewDelegate {
    func scrollViewDidScroll(scrollView: UIScrollView) {
        //print("scrollView.contentOffset.x:: \(scrollView.contentOffset.x)")
    }

    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        scrollView.pagingEnabled = true
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        scrollView.pagingEnabled = false
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(showRipeOnly == true){
            return ripeFruits.count
        }
        else{
            return fruits.count
        }
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomCell
       
        
        if(showRipeOnly == true){
            let fruit = ripeFruits[indexPath.row]
            if(fruit.needsHighlighting){
                cell.dot.highlight()
                cell.dot.setColor(fruit.color)
                fruit.needsHighlighting = false

            }else{
                cell.dot.setColor(fruit.color)

            }
            cell.title.text = fruit.name

        }
        else{
            let fruit = fruits[indexPath.row]
            if(fruit.needsHighlighting){
                cell.dot.highlight()
                cell.dot.setColor(fruit.color)
                fruit.needsHighlighting = false
            }else{
                cell.dot.setColor(fruit.color)
            }
            cell.title.text = fruit.name
        }
        return cell
    }
    
}



// MARK: - UITableViewDelegate methods

extension ViewController: UITableViewDelegate {
    //for when someone clicks on it
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       
    

        if(showRipeOnly == true){
           map.highlightFruit(ripeFruits[indexPath.row].index)
           ripeFruits[indexPath.row].needsHighlighting = !ripeFruits[indexPath.row].needsHighlighting
        }
        else{
            map.highlightFruit(indexPath.row)
            fruits[indexPath.row].needsHighlighting = !fruits[indexPath.row].needsHighlighting
        }
     
        
       fruitTable.reloadData()
        
        
    }
}










