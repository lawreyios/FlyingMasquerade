//
//  ViewController.swift
//  FlyingMasquerade
//
//  Created by Lawrence Tan on 27/10/17.
//  Copyright © 2017 lawrey. All rights reserved.
//

import UIKit

enum StartingPoint {
    case Left
    case Right
}

typealias Mask = UIImage
typealias MaskView = UIImageView

extension CGRect {
    static func getMaskRectLeft(y: CGFloat) -> CGRect {
        return CGRect(x: -110, y: y, width: 100, height: 65)
    }
    
    static func getMaskRectRight(y: CGFloat) -> CGRect {
        return CGRect(x: 2030, y: y, width: 100, height: 65)
    }
}

class FMViewController: UIViewController {
    
    @IBOutlet weak var qnImageView: UIImageView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        fadeInQuestion1()
    }
    
    func addMaskView(startingPoint: StartingPoint, y: CGFloat, mask: Int) -> MaskView {
        let mq = Mask(named: "mq\(mask)")
        var maskView = MaskView(frame: CGRect.getMaskRectLeft(y: y))
        
        if startingPoint == .Right { maskView = MaskView(frame: CGRect.getMaskRectRight(y: y)) }
        maskView.image = mq
        
        view.addSubview(maskView)
        
        return maskView
    }
    
    func addTransformTo(mask: MaskView, startingPoint: StartingPoint, duration: Int, delay: Int) {
        
        let translationX: CGFloat = startingPoint == .Left ? 1920 : -2250
        let transform = CGAffineTransform(translationX: translationX, y: 0).rotated(by: CGFloat(Double.pi))
        
        UIView.animate(withDuration: TimeInterval(duration), delay: TimeInterval(delay), options: .curveLinear, animations: {
            mask.transform = transform
        }, completion: nil)
    }

    override var prefersStatusBarHidden: Bool { return true }
}
