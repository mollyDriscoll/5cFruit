//
//  Node.swift
//  5cFruit
//
//  Created by Molly Driscoll on 5/22/16.
//  Copyright © 2016 mdriscoll. All rights reserved.
//

import UIKit

@IBDesignable
class Node: UIView {

    //var fillColor: UIColor = UIColor.blueColor()
    var highlighted = true
    var fruitIndex : Int?
   var hiding = false
   var fillColor = UIColor.blueColor()
 
   
   
    func makeCircular() {
        let cntr:CGPoint = self.center
        self.layer.cornerRadius = min(self.frame.size.height, self.frame.size.width) / 2.0
        self.center = cntr
        self.clipsToBounds = true
      
    }



    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
      if(!hiding){
         self.hidden = false
         let path = UIBezierPath(ovalInRect: rect)
         fillColor.setFill()
         path.fill()
         //self.makeCircular()
         if(!highlighted){
            let path = UIBezierPath(ovalInRect: rect)
            UIColor.yellowColor().setStroke()
            path.lineWidth = 3
            path.stroke()
        }
      }
      else{
         self.hidden = true
      }
   
}
    

    func highlight(){
        highlighted = !highlighted
        self.setNeedsDisplay()
    }
   
   func hide(){
      hiding = !hiding
      self.setNeedsDisplay()
   }
   
   func setColor(fillColor: UIColor){
      self.fillColor = fillColor
      self.makeCircular()
      self.setNeedsDisplay()
   }
   
}
