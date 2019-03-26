//
//  TableViewController.swift
//  Meme20
//
//  Created by Sergio Rubio on 17/03/2019.
//  Copyright © 2019 Sergio Rubio. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.tableView.reloadData()
    }
    
    // MARK: UITableViewController
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appDelegate().memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell")!
        let meme = appDelegate().memes[(indexPath as NSIndexPath).row]
        cell.textLabel!.text = meme.bottomText + meme.topText
        cell.imageView!.image = meme.memedImage
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedMeme = appDelegate().memes[(indexPath as NSIndexPath).row]
        let controller = self.storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        controller.meme = selectedMeme
        self.navigationController!.pushViewController(controller, animated: true)
    }
    
}
