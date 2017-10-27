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

let qn2 = "qn2"
let ans2 = "ans2"

extension FMViewController {
    func round2() {
        let mask1 = addMaskView(startingPoint: .Left, y: 50, mask: 1)
        addTransformTo(mask: mask1, startingPoint: .Left, duration: 5, delay: 1)
        
        let mask2 = addMaskView(startingPoint: .Right, y: 70, mask: 4)
        addTransformTo(mask: mask2, startingPoint: .Right, duration: 5, delay: 1)
        
        let mask3 = addMaskView(startingPoint: .Left, y: 330, mask: 2)
        addTransformTo(mask: mask3, startingPoint: .Left, duration: 3, delay: 1)
        
        let mask4 = addMaskView(startingPoint: .Right, y: 340, mask: 3)
        addTransformTo(mask: mask4, startingPoint: .Right, duration: 2, delay: 2)
        
        let mask5 = addMaskView(startingPoint: .Left, y: 400, mask: 3)
        addTransformTo(mask: mask5, startingPoint: .Left, duration: 4, delay: 1)
        
        let mask6 = addMaskView(startingPoint: .Right, y: 350, mask: 4)
        addTransformTo(mask: mask6, startingPoint: .Right, duration: 2, delay: 1)
        
        let mask7 = addMaskView(startingPoint: .Left, y: 250, mask: 1)
        addTransformTo(mask: mask7, startingPoint: .Left, duration: 5, delay: 1)
        
        let mask8 = addMaskView(startingPoint: .Right, y: 470, mask: 1)
        addTransformTo(mask: mask8, startingPoint: .Right, duration: 5, delay: 1)
        
        let mask9 = addMaskView(startingPoint: .Left, y: 90, mask: 3)
        addTransformTo(mask: mask9, startingPoint: .Left, duration: 3, delay: 2)
        
        let mask10 = addMaskView(startingPoint: .Right, y: 170, mask: 2)
        addTransformTo(mask: mask10, startingPoint: .Right, duration: 2, delay: 1)
        
        let mask11 = addMaskView(startingPoint: .Left, y: 560, mask: 2)
        addTransformTo(mask: mask11, startingPoint: .Left, duration: 3, delay: 1)
        
        let mask12 = addMaskView(startingPoint: .Right, y: 500, mask: 4)
        addTransformTo(mask: mask12, startingPoint: .Right, duration: 6, delay: 1)
        
        fadeInAnswer2(delay: 10)
    }
    
    func fadeInQuestion2() {
        let image = UIImage(named: qn2)
        qnImageView.image = image
        
        UIView.animate(withDuration: 1, animations: {
            self.qnImageView.alpha = 1
        }) { (finished) in
            let when = DispatchTime.now() + 2
            DispatchQueue.main.asyncAfter(deadline: when) {
                self.qnImageView.alpha = 0
                self.round2()
            }
        }
    }
    
    func fadeInAnswer2(delay: Int) {
        let image = UIImage(named: qn2)
        qnImageView.image = image
        
        UIView.animate(withDuration: 1, delay: TimeInterval(delay), options: .curveLinear, animations: {
            self.qnImageView.alpha = 1
        }) { (finished) in
            let when = DispatchTime.now() + 2
            DispatchQueue.main.asyncAfter(deadline: when) {
                self.qnImageView.alpha = 0
                let image = UIImage(named: ans2)
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

