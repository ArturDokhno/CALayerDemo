//
//  SecondViewController.swift
//  CALayerDemo
//
//  Created by Артур Дохно on 20.03.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var gradientlayer: CAGradientLayer! {
        didSet {
            gradientlayer.startPoint = CGPoint(x: 0, y: 0)
            gradientlayer.endPoint = CGPoint(x: 0, y: 1)
            gradientlayer.colors = [UIColor.green.cgColor,
                                    UIColor.blue.cgColor]
//            gradientlayer.locations = [0.1, 0.4, 1]
        }
    }

    @IBOutlet var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = imageView.frame.size.height / 2
            imageView.clipsToBounds = true
        }
    }
    @IBOutlet var button: UIButton! {
        didSet {
            button.layer.cornerRadius = 10
            button.layer.shadowOffset = CGSize(width: 0, height: 5)
            button.layer.shadowOpacity = 0.5
            button.layer.shadowRadius = 5
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientlayer.frame = CGRect(x: 0,
                                     y: 0,
                                     width: self.view.bounds.size.width,
                                     height: self.view.bounds.size.height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradientlayer = CAGradientLayer()
        view.layer.insertSublayer(gradientlayer, at: 0)
    }

}
