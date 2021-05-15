//
//  WishlistItemViewController.swift
//  iSee
//
//  Created by Mathew Chanda on 5/14/21.
//

import UIKit

class WishlistItemViewController: UIViewController {
    var url : String = "https://www.amazon.com/Samsung-Galaxy-G920T-32GB-T-Mobile/dp/B011AC4U7A"
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
    
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    var phone : Phone?
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = phone?.name as? String
        companyLabel.text = phone?.company as? String
        price.text = String(format: "$%f", phone!.price!)
        itemPic.image = UIImage(named: phone!.photo!)
        descriptionLabel.text = phone?.description!
        label1.text = phone?.features?[0] as? String
        label2.text = phone?.features?[1] as! String
        label3.text = phone?.features?[2] as! String
        label4.text = phone?.features?[3] as! String
        url = (phone?.url)!
        priceBackground.roundCorners([.topLeft,.topRight,.bottomRight, .bottomLeft], radius: 35)
        backButton.roundCorners([.topLeft,.topRight,.bottomRight, .bottomLeft], radius: 35)
        buyButton.roundCorners([.topLeft,.topRight,.bottomRight, .bottomLeft], radius: 35)
    }
    
    @IBAction func buy(_ sender: Any) {
        self.dismiss(animated: true) {
            if let url = URL(string: self.url) {
                UIApplication.shared.open(url)
            }
        }
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
