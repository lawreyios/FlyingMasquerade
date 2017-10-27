//
//  Question1.swift
//  FlyingMasquerade
//
//  Created by Lawrence Tan on 27/10/17.
//  Copyright © 2017 lawrey. All rights reserved.
//

import Foundation
import UIKit

//MARK: Round 1

let qn1 = "qn1"
let ans1 = "ans1"

extension FMViewController {
    func round1() {
        let mask1 = addMaskView(startingPoint: .Left, y: 50, mask: 1)
        addTransformTo(mask: mask1, startingPoint: .Left, duration: 5, delay: 1)
        
        let mask2 = addMaskView(startingPoint: .Right, y: 70, mask: 2)
        addTransformTo(mask: mask2, startingPoint: .Right, duration: 5, delay: 1)
        
        let mask3 = addMaskView(startingPoint: .Left, y: 140, mask: 1)
        addTransformTo(mask: mask3, startingPoint: .Left, duration: 3, delay: 1)
        
        let mask4 = addMaskView(startingPoint: .Right, y: 340, mask: 2)
        addTransformTo(mask: mask4, startingPoint: .Right, duration: 2, delay: 1)
        
        let mask5 = addMaskView(startingPoint: .Left, y: 400, mask: 2)
        addTransformTo(mask: mask5, startingPoint: .Left, duration: 4, delay: 1)
        
        let mask6 = addMaskView(startingPoint: .Right, y: 600, mask: 2)
        addTransformTo(mask: mask6, startingPoint: .Right, duration: 3, delay: 1)
        
        fadeInAnswer1(delay: 7)
    }
    
    func fadeInQuestion1() {
        let image = UIImage(named: qn1)
        qnImageView.image = image
        
        UIView.animate(withDuration: 1, animations: {
            self.qnImageView.alpha = 1
        }) { (finished) in
            let when = DispatchTime.now() + 2
            DispatchQueue.main.asyncAfter(deadline: when) {
                self.qnImageView.alpha = 0
                self.round1()
            }
        }
    }
    
    func fadeInAnswer1(delay: Int) {
        let image = UIImage(named: qn1)
        qnImageView.image = image
        
        UIView.animate(withDuration: 1, delay: TimeInterval(delay), options: .curveLinear, animations: {
            self.qnImageView.alpha = 1
        }) { (finished) in
            let when = DispatchTime.now() + 2
            DispatchQueue.main.asyncAfter(deadline: when) {
                self.qnImageView.alpha = 0
                let image = UIImage(named: ans1)
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
