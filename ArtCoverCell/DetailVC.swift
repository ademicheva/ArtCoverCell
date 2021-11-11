//
//  DetailVC.swift
//  ArtCoverCell
//
//  Created by Алина on 11.11.2021.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet var image: UIImageView!
    @IBOutlet var label: UILabel!
    
    var trackTitle = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = UIImage(named: trackTitle)
        label.text = trackTitle

        // Do any additional setup after loading the view.
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
