//
//  WishlistItemViewController.swift
//  iSee
//
//  Created by Mathew Chanda on 5/14/21.
//

import UIKit

class WishlistItemViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var priceBackground: UIView!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var itemPic: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var backButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        priceBackground.roundCorners([.topLeft,.topRight,.bottomRight, .bottomLeft], radius: 35)
        label1.text = "\u{2022} Vivid Images with a Fast, Bright Camera"
        label2.text = "\u{2022} Super Charging and Cord Free"
        label3.text = "\u{2022} 5.1-inch Quad HD Super AMOLED Screen"
        label4.text = "\u{2022} Long-Lasting 2550 mAh Fast Charging battery"
        backButton.roundCorners([.topLeft,.topRight,.bottomRight, .bottomLeft], radius: 35)
    }
    

    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true) {
            
        }
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
