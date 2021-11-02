//
//  ViewController.swift
//  SHO-RYU-KEN
//
//  Created by YUKI YOUDA on 2021/11/01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var charaImage: UIImageView!
    
    var imageArrayAttack : Array<UIImage> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        while let attackImage = UIImage(named: "attak\(imageArrayAttack.count+1)") {
            imageArrayAttack.append(attackImage)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func attackBtn(_ sender: Any) {
        
        charaImage.animationImages = imageArrayAttack
        charaImage.animationDuration = 1
        charaImage.animationRepeatCount = 1
        
        charaImage.startAnimating()
    }
    
}
