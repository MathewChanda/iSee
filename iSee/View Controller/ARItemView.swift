//
//  ARItemView.swift
//  iSee
//
//  Created by Mathew Chanda on 5/14/21.
//

import UIKit

class ARItemView: UIViewController {
    @IBOutlet weak var wishlistBuiton: UIButton!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var itemPic: UIImageView!
    @IBOutlet weak var priceBackground: UIView!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet var label8: UIView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var label6: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        priceBackground.roundCorners([.topLeft,.topRight,.bottomRight, .bottomLeft], radius: 35)
        label1.text = "\u{2022} Vivid Images with a Fast, Bright Camera"
        label2.text = "\u{2022} Super Charging and Cord Free"
        label3.text = "\u{2022} 5.1-inch Quad HD Super AMOLED Screen"
        label4.text = "\u{2022} Long-Lasting 2550 mAh Fast Charging battery"
        wishlistBuiton.roundCorners([.topLeft,.topRight,.bottomRight, .bottomLeft], radius: 35)
        backButton.roundCorners([.topLeft,.topRight,.bottomRight, .bottomLeft], radius: 35)
    }
    
    @IBAction func addWishlist(_ sender: Any) {
        self.dismiss(animated: true) {
            var phone : Phone = Phone();
            phone.name = "Samsung Galaxy S6"
            phone.price = 399.00
            phone.company = "Samsung"
            phone.features = ["\u{2022} Vivid Images with a Fast, Bright Camera", "\u{2022} Super Charging and Cord Free","\u{2022} 5.1-inch Quad HD Super AMOLED Screen","\u{2022} Long-Lasting 2550 mAh Fast Charging battery"]
            phone.description = "Powerful to use and beautiful to behold. The slim and lightweight, all-metal body and glass design make a bold statement, while the lightning-fast Samsung Exynos® 7420 Octa-core 64-bit processor delivers the most power and speed we’ve ever put in a smartphone."
            phone.url = "https://www.amazon.com/Samsung-Galaxy-G920T-32GB-T-Mobile/dp/B011AC4U7A"
            phone.photo = "S6 T-Mobile"
            WishlistViewController.phones.append(phone)
            print(WishlistViewController.phones)
            NotificationCenter.default.post(name: Notification.Name("loadTableData"), object: nil)
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


extension UIView {
    func roundCorners(_ corners:UIRectCorner, radius: CGFloat) {
    let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
    let mask = CAShapeLayer()
    mask.path = path.cgPath
    self.layer.mask = mask
  }
}

extension Double {
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
