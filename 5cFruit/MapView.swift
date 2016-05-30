//
//  MapView.swift
//  5cFruit
//
//  Created by Molly Driscoll on 5/17/16.
//  Copyright © 2016 mdriscoll. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics;


class MapView: UIView{
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    var size : CGSize!
    var fruits = [Fruit]()
    @IBOutlet weak var apple1: Node!
    @IBOutlet weak var apple2: Node!
    @IBOutlet weak var apple3: Node!
    @IBOutlet weak var apple4: Node!
    @IBOutlet weak var apple5: Node!
    @IBOutlet weak var apple6: Node!
    @IBOutlet weak var apple7: Node!
    @IBOutlet weak var apple8: Node!
    @IBOutlet weak var apple9: Node!
    @IBOutlet weak var apple10: Node!
    @IBOutlet weak var apple11: Node!
    @IBOutlet weak var apple12: Node!
    @IBOutlet weak var apple13: Node!
    @IBOutlet weak var apple14: Node!
    @IBOutlet weak var apple15: Node!
    
    @IBOutlet weak var apricot1: Node!
    @IBOutlet weak var apricot2: Node!
    
    
    @IBOutlet weak var avocado1: Node!
    @IBOutlet weak var avocado2: Node!
    @IBOutlet weak var avocado3: Node!
    @IBOutlet weak var avocado4: Node!
    @IBOutlet weak var avocado5: Node!
    
    @IBOutlet weak var bloodOrange1: Node!
    @IBOutlet weak var bloodOrange2: Node!
    
    @IBOutlet weak var fig1: Node!
    @IBOutlet weak var fig2: Node!
    @IBOutlet weak var fig3: Node!
    @IBOutlet weak var fig4: Node!
    @IBOutlet weak var fig5: Node!
    
    @IBOutlet weak var grapeFruit1: Node!
    @IBOutlet weak var grapeFruit2: Node!
    @IBOutlet weak var grapeFruit3: Node!
    @IBOutlet weak var grapeFruit4: Node!
    @IBOutlet weak var grapeFruit5: Node!
    @IBOutlet weak var grapeFruit6: Node!
    @IBOutlet weak var grapeFruit7: Node!
    
    @IBOutlet weak var grape1: Node!
    @IBOutlet weak var grape2: Node!

    
    @IBOutlet weak var guava1: Node!
    @IBOutlet weak var guava2: Node!
    @IBOutlet weak var guava3: Node!
    @IBOutlet weak var guava4: Node!
    @IBOutlet weak var guava5: Node!
    @IBOutlet weak var guava6: Node!
    
    
    @IBOutlet weak var kumquat1: Node!
    @IBOutlet weak var kumquat2: Node!
    @IBOutlet weak var kumquat3: Node!
    @IBOutlet weak var kumquat4: Node!
    @IBOutlet weak var kumquat5: Node!
    
    @IBOutlet weak var lemon1: Node!
    @IBOutlet weak var lemon2: Node!
    @IBOutlet weak var lemon3: Node!
    @IBOutlet weak var lemon4: Node!
    @IBOutlet weak var lemon5: Node!
    @IBOutlet weak var lemon6: Node!
    @IBOutlet weak var lemon7: Node!
    @IBOutlet weak var lemon8: Node!
    
    
    @IBOutlet weak var lime1: Node!
    @IBOutlet weak var lime2: Node!
    @IBOutlet weak var lime3: Node!
    @IBOutlet weak var lime4: Node!
    @IBOutlet weak var lime5: Node!
    @IBOutlet weak var lime6: Node!
    
    
    @IBOutlet weak var loquat1: Node!
    @IBOutlet weak var loquat2: Node!
    @IBOutlet weak var loquat3: Node!
    
    @IBOutlet weak var nut1: Node!
    @IBOutlet weak var nut2: Node!
    @IBOutlet weak var nut3: Node!
    @IBOutlet weak var nut4: Node!
    
    @IBOutlet weak var olive1: Node!
    @IBOutlet weak var olive2: Node!
    @IBOutlet weak var olive3: Node!
    @IBOutlet weak var olive4: Node!
    @IBOutlet weak var olive5: Node!
    @IBOutlet weak var olive6: Node!
    @IBOutlet weak var olive7: Node!
    @IBOutlet weak var olive8: Node!
    @IBOutlet weak var olive9: Node!
    @IBOutlet weak var olive10: Node!
    @IBOutlet weak var olive11: Node!
    @IBOutlet weak var olive12: Node!
    @IBOutlet weak var olive13: Node!
    @IBOutlet weak var olive14: Node!
    @IBOutlet weak var olive15: Node!

    
    
    @IBOutlet weak var orange1: Node!
    @IBOutlet weak var orange2: Node!
    @IBOutlet weak var orange3: Node!
    @IBOutlet weak var orange4: Node!
    @IBOutlet weak var orange5: Node!
    @IBOutlet weak var orange6: Node!
    @IBOutlet weak var orange7: Node!
    @IBOutlet weak var orange8: Node!
    @IBOutlet weak var orange9: Node!
    @IBOutlet weak var orange10: Node!
    @IBOutlet weak var orange11: Node!
    @IBOutlet weak var orange12: Node!
    @IBOutlet weak var orange13: Node!
    @IBOutlet weak var orange14: Node!
    @IBOutlet weak var orange15: Node!
     @IBOutlet weak var orange16: Node!
     @IBOutlet weak var orange17: Node!
      @IBOutlet weak var orange18: Node!
    
    @IBOutlet weak var peaches1: Node!
    @IBOutlet weak var peaches2: Node!
    @IBOutlet weak var peaches3: Node!
    @IBOutlet weak var peaches4: Node!
    @IBOutlet weak var peaches5: Node!
    @IBOutlet weak var peaches6: Node!
    
    @IBOutlet weak var persimmon1: Node!
    @IBOutlet weak var persimmon2: Node!
    
    @IBOutlet weak var pineappleGuava1: Node!
    
    @IBOutlet weak var plum1: Node!
    @IBOutlet weak var plum2: Node!
    @IBOutlet weak var plum3: Node!
    @IBOutlet weak var plum4: Node!
    @IBOutlet weak var plum5: Node!
    @IBOutlet weak var plum6: Node!
    @IBOutlet weak var plum7: Node!
    @IBOutlet weak var plum8: Node!
    @IBOutlet weak var plum9: Node!
    @IBOutlet weak var plum10: Node!
    @IBOutlet weak var plum11: Node!
    @IBOutlet weak var plum12: Node!
    @IBOutlet weak var plum13: Node!
    @IBOutlet weak var plum14: Node!
    @IBOutlet weak var plum15: Node!
    @IBOutlet weak var plum16: Node!
    
    @IBOutlet weak var pomegrante1: Node!
    @IBOutlet weak var pomegrante2: Node!
    @IBOutlet weak var pomegrante3: Node!
    @IBOutlet weak var pomegrante4: Node!
    @IBOutlet weak var pomegrante5: Node!
    
    @IBOutlet weak var pomelo1: Node!
    
    @IBOutlet weak var rosemary1: Node!
    
    @IBOutlet weak var strawberryGuava1: Node!
    
    @IBOutlet weak var strawberry1: Node!
    @IBOutlet weak var strawberry2: Node!
    @IBOutlet weak var strawberry3: Node!
    @IBOutlet weak var strawberry4: Node!
    @IBOutlet weak var strawberry5: Node!
    @IBOutlet weak var strawberry6: Node!
    @IBOutlet weak var strawberry7: Node!
    @IBOutlet weak var strawberry8: Node!

    

    

    
   
    
    var nodes: [[Node]!]!
    
    
    func highlightFruit(index: Int){
        for node in nodes[index]{
                node.highlight()
            
        }
        
    
    }
    
    func nodeInit(fruits: [Fruit]){
        self.fruits = fruits
       nodes = [[apple1, apple2, apple3, apple4, apple5, apple6, apple7, apple8, apple9, apple10, apple11, apple12, apple13, apple14, apple15]]
        //apple init
        for node in nodes[0]{
            node.setColor(fruits[0].color)
        }
        
        nodes.append([apricot1, apricot2])
        for node in nodes[1]{
            node.setColor(fruits[1].color)
        }
        
        nodes.append([avocado1, avocado2, avocado3, avocado4, avocado5])
        for node in nodes[2]{
            node.setColor(fruits[2].color)
        }
        
        nodes.append([bloodOrange1, bloodOrange2])
        for node in nodes[3]{
            node.setColor(fruits[3].color)
        }
        
        nodes.append([fig1, fig2, fig3, fig4, fig5])
        for node in nodes[4]{
            node.setColor(fruits[4].color)
        }
        
        nodes.append([grapeFruit1, grapeFruit2, grapeFruit3, grapeFruit4, grapeFruit5, grapeFruit6, grapeFruit7])
        for node in nodes[5]{
            node.setColor(fruits[5].color)
        }
        
        nodes.append([grape1, grape2])
        for node in nodes[6]{
            node.setColor(fruits[6].color)
        }
        
        nodes.append([guava1, guava2, guava3, guava4, guava5, guava6])
        for node in nodes[7]{
            node.setColor(fruits[7].color)
        }
        
        nodes.append([kumquat1, kumquat2, kumquat3, kumquat4, kumquat5])
        for node in nodes[8]{
            node.setColor(fruits[8].color)
        }
        
        nodes.append([lemon1, lemon2, lemon3, lemon4, lemon5, lemon6, lemon7, lemon8])
        for node in nodes[9]{
            node.setColor(fruits[9].color)
        }
        
        nodes.append([lime1, lime2, lime3, lime4, lime5, lime6])
        for node in nodes[10]{
            node.setColor(fruits[10].color)
        }
        
        nodes.append([loquat1, loquat2, loquat3])
        for node in nodes[11]{
            node.setColor(fruits[11].color)
        }
        
        nodes.append([nut1, nut2, nut3, nut4])
        for node in nodes[12]{
            node.setColor(fruits[12].color)
        }
        
        nodes.append([olive1, olive2, olive3, olive4, olive5, olive6, olive7, olive8, olive9, olive10, olive11, olive12, olive13, olive14, olive15])
        for node in nodes[13]{
            node.setColor(fruits[13].color)
        }
        
        nodes.append([orange1, orange2, orange3, orange4, orange5, orange6, orange7, orange8, orange9, orange10, orange11, orange12, orange13, orange14, orange15, orange16, orange17, orange18])
        for node in nodes[14]{
            node.setColor(fruits[14].color)
        }
        
        nodes.append([peaches1, peaches2, peaches3, peaches4, peaches5, peaches6])
        for node in nodes[15]{
            node.setColor(fruits[15].color)
        }
        
        nodes.append([persimmon1, persimmon2])
        for node in nodes[16]{
            node.setColor(fruits[16].color)
        }
        
        nodes.append([pineappleGuava1])
        for node in nodes[17]{
            node.setColor(fruits[17].color)
        }
        
        nodes.append([plum1, plum2, plum3, plum4, plum5, plum6, plum7, plum8, plum9, plum10, plum11, plum12, plum13, plum14, plum15, plum16])
        for node in nodes[18]{
            node.setColor(fruits[18].color)
        }
        
        nodes.append([pomegrante1, pomegrante2, pomegrante3, pomegrante4, pomegrante5])
        for node in nodes[19]{
            node.setColor(fruits[19].color)
        }
        
        nodes.append([pomelo1])
        for node in nodes[20]{
            node.setColor(fruits[20].color)
        }
        
        nodes.append([rosemary1])
        for node in nodes[21]{
            node.setColor(fruits[21].color)
        }
        
        // for the sapotes
        //nodes.append([])
//        for node in nodes[22]{
//            node.setColor(fruits[23].color)
//        }
        
        nodes.append([strawberryGuava1])
        for node in nodes[22]{
            node.setColor(fruits[22].color)
        }
        
        nodes.append([strawberry1, strawberry2, strawberry3, strawberry4, strawberry5,strawberry6,strawberry7, strawberry8])
        for node in nodes[23]{
            node.setColor(fruits[23].color)
        }
        
       
    }

    
     func updateMinZoomScaleForSize(size: CGSize) {
        self.size = size
        
        let widthScale = size.width / imageView.bounds.width
        let heightScale = size.height / imageView.bounds.height
        let minScale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = minScale
        scrollView.zoomScale = minScale
        
    }
    
    func updateConstraintsForSize(size: CGSize) {
        
        let yOffset = max(0, (size.height - imageView.frame.height) / 2)
        imageViewTopConstraint.constant = yOffset
       
        imageViewBottomConstraint.constant = yOffset
        
        let xOffset = max(0, (size.width - imageView.frame.width) / 2)
        imageViewLeadingConstraint.constant = xOffset
        imageViewTrailingConstraint.constant = xOffset
        //scrollView.layoutIfNeeded()
    }
}


extension MapView: UIScrollViewDelegate {
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    func scrollViewDidZoom(scrollView: UIScrollView) {
        updateConstraintsForSize(size)

   }
}

