//
//  ViewController.swift
//  CAShapeLayer
//
//  Created by LA Argon on 17/02/17.
//  Copyright © 2017 LA Argon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        roundRectangle()
    }

    /*
    // Draws a Stick man on the screen.
    func drawStickMan() {
        
        // create a bezier path
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 175, y: 100))
        
        path.addArc(withCenter: CGPoint(x: 150, y: 100), radius: 25, startAngle: 0, endAngle: 2.0 * CGFloat(M_PI), clockwise: true)
        path.move(to: CGPoint(x: 150, y: 125))
        path.addLine(to: CGPoint(x: 150, y: 175))
        path.addLine(to: CGPoint(x: 125, y: 225))
        path.move(to: CGPoint(x: 150, y: 175))
        path.addLine(to: CGPoint(x: 175, y: 225))
        path.move(to: CGPoint(x: 100, y: 150))
        path.addLine(to: CGPoint(x: 200, y: 150))
        
        // create shape layer
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = 5
        shapeLayer.lineJoin = kCALineJoinRound
        shapeLayer.lineCap = kCALineCapRound
        shapeLayer.path = path.cgPath
        
        // add it to view
        self.view.layer.addSublayer(shapeLayer)
    }
 */
    
    func roundRectangle() {
        // define the path parameter
        let rect = CGRect(x: 50, y: 50, width: 100, height: 100)
        let radii = CGSize(width: 20, height: 20)
        let corners: UIRectCorner = [UIRectCorner.topRight, .bottomLeft, .bottomRight]
        
        // create a path
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: radii)
        
        // create shape layer
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = 5
        shapeLayer.lineJoin = kCALineJoinRound
        shapeLayer.lineCap = kCALineCapRound
        shapeLayer.path = path.cgPath
        
        // add it to view
        self.view.layer.addSublayer(shapeLayer)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


























