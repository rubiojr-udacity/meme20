//
//  MemeViewDetailController.swift
//  Meme10
//
//  Created by Sergio Rubio on 26/03/2019.
//  Copyright © 2019 Sergio Rubio. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    
    var meme: Meme?
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = meme?.memedImage
    }
}
