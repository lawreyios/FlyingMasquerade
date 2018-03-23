//
//  Question1.swift
//  FlyingMasquerade
//
//  Created by Lawrence Tan on 27/10/17.
//  Copyright © 2017 lawrey. All rights reserved.
//

import Foundation
import UIKit

//MARK: Round 2

let qn5 = "qn5"
let ans5 = "ans5"

extension FMViewController {
    func round5() {
        let mask1 = addMaskView(startingPoint: .Left, y: 30, mask: 1)
        addTransformTo(mask: mask1, startingPoint: .Left, duration: 2, delay: 1)
        
        let mask2 = addMaskView(startingPoint: .Left, y: 100, mask: 2)
        addTransformTo(mask: mask2, startingPoint: .Left, duration: 3, delay: 1)
        
        let mask3 = addMaskView(startingPoint: .Left, y: 170, mask: 2)
        addTransformTo(mask: mask3, startingPoint: .Left, duration: 4, delay: 1)
        
        let mask4 = addMaskView(startingPoint: .Right, y: 240, mask: 1)
        addTransformTo(mask: mask4, startingPoint: .Right, duration: 3, delay: 2)
        
        let mask5 = addMaskView(startingPoint: .Left, y: 310, mask: 3)
        addTransformTo(mask: mask5, startingPoint: .Left, duration: 4, delay: 2)
        
        let mask6 = addMaskView(startingPoint: .Right, y: 380, mask: 4)
        addTransformTo(mask: mask6, startingPoint: .Right, duration: 3, delay: 2)
        
        let mask7 = addMaskView(startingPoint: .Left, y: 450, mask: 2)
        addTransformTo(mask: mask7, startingPoint: .Left, duration: 5, delay: 2)
        
        let mask8 = addMaskView(startingPoint: .Right, y: 520, mask: 2)
        addTransformTo(mask: mask8, startingPoint: .Right, duration: 5, delay: 1)
        
        let mask9 = addMaskView(startingPoint: .Left, y: 550, mask: 2)
        addTransformTo(mask: mask9, startingPoint: .Left, duration: 3, delay: 2)
        
        let mask10 = addMaskView(startingPoint: .Right, y: 660, mask: 1)
        addTransformTo(mask: mask10, startingPoint: .Right, duration: 4, delay: 1)
        
        let mask11 = addMaskView(startingPoint: .Left, y: 50, mask: 4)
        addTransformTo(mask: mask11, startingPoint: .Left, duration: 3, delay: 2)
        
        let mask12 = addMaskView(startingPoint: .Right, y: 75, mask: 4)
        addTransformTo(mask: mask12, startingPoint: .Right, duration: 4, delay: 1)
        
        let mask13 = addMaskView(startingPoint: .Right, y: 125, mask: 1)
        addTransformTo(mask: mask13, startingPoint: .Right, duration: 5, delay: 2)
        
        let mask14 = addMaskView(startingPoint: .Left, y: 75, mask: 2)
        addTransformTo(mask: mask14, startingPoint: .Left, duration: 6, delay: 1)
        
        let mask15 = addMaskView(startingPoint: .Right, y: 225, mask: 1)
        addTransformTo(mask: mask15, startingPoint: .Right, duration: 7, delay: 2)
        
        let mask16 = addMaskView(startingPoint: .Left, y: 275, mask: 1)
        addTransformTo(mask: mask16, startingPoint: .Left, duration: 3, delay: 2)
        
        let mask17 = addMaskView(startingPoint: .Right, y: 325, mask: 2)
        addTransformTo(mask: mask17, startingPoint: .Right, duration: 4, delay: 1)
        
        let mask18 = addMaskView(startingPoint: .Left, y: 275, mask: 1)
        addTransformTo(mask: mask18, startingPoint: .Left, duration: 5, delay: 2)
        
        let mask19 = addMaskView(startingPoint: .Right, y: 225, mask: 4)
        addTransformTo(mask: mask19, startingPoint: .Right, duration: 6, delay: 1)
        
        let mask20 = addMaskView(startingPoint: .Right, y: 175, mask: 2)
        addTransformTo(mask: mask20, startingPoint: .Right, duration: 7, delay: 2)
        
        let mask21 = addMaskView(startingPoint: .Right, y: 425, mask: 4)
        addTransformTo(mask: mask21, startingPoint: .Right, duration: 7, delay: 2)
        
        let mask22 = addMaskView(startingPoint: .Left, y: 375, mask: 1)
        addTransformTo(mask: mask22, startingPoint: .Left, duration: 3, delay: 2)
        
        let mask23 = addMaskView(startingPoint: .Right, y: 125, mask: 2)
        addTransformTo(mask: mask23, startingPoint: .Right, duration: 4, delay: 1)
        
        let mask24 = addMaskView(startingPoint: .Left, y: 175, mask: 1)
        addTransformTo(mask: mask24, startingPoint: .Left, duration: 5, delay: 2)
        
        let mask25 = addMaskView(startingPoint: .Right, y: 325, mask: 1)
        addTransformTo(mask: mask25, startingPoint: .Right, duration: 6, delay: 1)
        
        let mask26 = addMaskView(startingPoint: .Right, y: 275, mask: 2)
        addTransformTo(mask: mask26, startingPoint: .Right, duration: 4, delay: 2)
        
        fadeInAnswer5(delay: 14)
    }
    
    func fadeInQuestion5() {
        let image = UIImage(named: qn5)
        qnImageView.image = image
        
        UIView.animate(withDuration: 1, animations: {
            self.qnImageView.alpha = 1
        }) { (finished) in
            let when = DispatchTime.now() + 2
            DispatchQueue.main.asyncAfter(deadline: when) {
                self.qnImageView.alpha = 0
                self.round5()
            }
        }
    }
    
    func fadeInAnswer5(delay: Int) {
        let image = UIImage(named: qn5)
        qnImageView.image = image
        
        UIView.animate(withDuration: 1, delay: TimeInterval(delay), options: .curveLinear, animations: {
            self.qnImageView.alpha = 1
        }) { (finished) in
            let when = DispatchTime.now() + 2
            DispatchQueue.main.asyncAfter(deadline: when) {
                self.qnImageView.alpha = 0
                let image = UIImage(named: ans5)
                self.qnImageView.image = image
                
                UIView.animate(withDuration: 1, delay: 1, options: .curveLinear, animations: {
                    self.qnImageView.alpha = 1
                }) { (finished) in
                    let when = DispatchTime.now() + 2
                    DispatchQueue.main.asyncAfter(deadline: when) {
                        self.qnImageView.alpha = 1
                    }
                }
            }
        }
    }
}




