//
//  ViewController.swift
//  slideshowApp
//
//  Created by Tatsushi Fukunaga on 2020/08/15.
//  Copyright © 2020 tatsushi.fukunaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func unwindToTop(segue: UIStoryboardSegue) {
    }
    @IBOutlet weak var imageView: UIImageView!
    
    var imageIndex = 0
    
   
    
    let images: [UIImage] = [UIImage(named:"1")!, UIImage(named:"2")!, UIImage(named:"3")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = images[imageIndex]

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController : SecondViewController = (segue.destination as? SecondViewController)!
        
        secondViewController.selectedImage = imageView.image
    }

    @IBAction func next(_ sender: Any) {
        if imageIndex == 2 {
            imageIndex = 0
        } else {
            imageIndex += 1
        }
        imageView.image = images[imageIndex]
    }
    
    @IBAction func back(_ sender: Any) {
        if imageIndex == 0 {
            imageIndex = 2
        } else {
            imageIndex -= 1
        }
        imageView.image = images[imageIndex]
    }
  
    
    var timer: Timer!
    
    @objc func startSlideShow() {
        if imageIndex == 2 {
            imageIndex = 0
        } else {
            imageIndex += 1
        }
        imageView.image = images[imageIndex]
        
    }
    
    @IBOutlet weak var tappedNext: UIButton!
    @IBOutlet weak var tappedBack: UIButton!
    
    
    
    @IBAction func startstop(_ sender: Any) {
        
        if timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(startSlideShow), userInfo: nil, repeats: true)
            (sender as AnyObject).setTitle("停止", for: .normal)
            tappedNext.isEnabled = false
            tappedBack.isEnabled = false
           
        } else {
            timer.invalidate()
            timer = nil
            (sender as AnyObject).setTitle("再生", for: .normal)
            tappedNext.isEnabled = true
            tappedBack.isEnabled = true
        }
        
    }
    
    
    
}

