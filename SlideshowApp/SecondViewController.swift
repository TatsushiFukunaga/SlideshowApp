//
//  SecondViewController.swift
//  slideshowApp
//
//  Created by Tatsushi Fukunaga on 2020/08/15.
//  Copyright © 2020 tatsushi.fukunaga. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tappedImageView: UIImageView!
    var selectedImage : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tappedImageView.image = selectedImage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
