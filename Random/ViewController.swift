//
//  ViewController.swift
//  Random
//
//  Created by apple on 2015/1/5.
//  Copyright (c) 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ScreenSize:CGRect = UIScreen.mainScreen().bounds
    let ScreenWidth = UIScreen.mainScreen().bounds.width
    let ScreenHeight = UIScreen.mainScreen().bounds.height

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Setting()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func Setting(){
        var Title_label = UILabel(frame: CGRectMake(0, 0, 120, 60))
        Title_label.center = CGPointMake(ScreenWidth*(CGFloat(1)/2), ScreenHeight*(CGFloat(2)/11))
        Title_label.textColor = UIColor.whiteColor()
        Title_label.text = "Random"
        Title_label.font = UIFont(name: "Arial-BoldMT", size: 30)
        self.view.addSubview(Title_label)
        
        var circleWidth = CGFloat(100)
        var circleHeight = circleWidth
        var circleView = CircleView(frame: CGRectMake(ScreenWidth*(CGFloat(1)/2), ScreenHeight*(CGFloat(1)/2), circleWidth, circleHeight))
        circleView.colors = UIColor(red: 0, green: 255, blue: 0, alpha: 1.0)
        view.addSubview(circleView)
    }

}

