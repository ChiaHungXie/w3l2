//
//  ViewController.swift
//  w3l2
//
//  Created by 謝佳宏 on 2019/7/20.
//  Copyright © 2019 謝佳宏. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0.0
    var timer:Timer!
    var speed = 4.0
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let newView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        newView.center = self.view.center
        newView.backgroundColor = UIColor.red
        newView.transform = CGAffineTransform(rotationAngle: 0)
        view.addSubview(newView)
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.03, repeats: true, block: { (t) in
            self.rotateView(targateView: newView)
            
        }
        
    )
    
}
func rotateView(targateView:UIView){
    let angle = counter * Double.pi / 180
    targateView.transform =  CGAffineTransform(rotationAngle: CGFloat(angle))
    counter += speed
//    if self.segment.selectedSegmentIndex == 0{
//        counter += 4
//    }else{
//        counter -= 4
//    }
//
}
    
    @IBAction func sliderAction(_ sender: UISlider) {
        speed = Double(sender.value)
        
    }
    
    @IBAction func segment(_ sender: UISegmentedControl) {
        
 //       switch sender.selectedSegmentIndex{
//        case 0:
//            speed = 2
//        case 1:
//            speed = 4
//        case 2:
//            speed = 16.323
//        case 3:
//            speed = 54.2
//        default:
//            break
//        }

    }
}

