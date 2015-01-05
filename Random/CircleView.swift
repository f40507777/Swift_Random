//
//  CircleView.swift
//  Random
//
//  Created by apple on 2015/1/5.
//  Copyright (c) 2015年 apple. All rights reserved.
//

import UIKit

class CircleView: UIView {

    var colors:UIColor = UIColor.redColor()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawRect(rect: CGRect) {
        // Get the Graphics Context
        var context = UIGraphicsGetCurrentContext();

        colors.set()
        
        // Create Circle
        CGContextAddArc(context, (frame.size.width)/2, frame.size.height/2, (frame.size.width - 10)/2, 0.0, CGFloat(M_PI * 2.0), 1)

        // Draw
        CGContextFillPath(context);
    }

}
