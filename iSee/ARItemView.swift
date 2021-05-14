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

