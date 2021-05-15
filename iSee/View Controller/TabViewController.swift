//
//  TabViewController.swift
//  iSee
//
//  Created by Mathew Chanda on 5/14/21.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        for viewController in self.viewControllers! {
            _ = viewController.view
        }
        
        var phone : Phone = Phone();
        phone.name = "Apple iPhone 12"
        phone.price = 749
        phone.company = "Apple"
        phone.features = ["\u{2022} 6.1-inch Super Retina XDR Display", "\u{2022} 4K Dolby Vision HDR Recording","\u{2022} IP68 Water Resistance","\u{2022} 5G Connectivity"]
        phone.description = "5G to download movies on the fly and stream high-quality video. Beautifully bright 6.1-inch Super Retina XDR display. Ceramic Shield with 4x better drop performance. Incredible low-light photography with Night mode on all cameras. Let the fun begin."
        phone.url = "https://www.t-mobile.com/cell-phone/apple-iphone-12"
        phone.photo = "iPhone 12"
        WishlistViewController.phones.append(phone)
        
        phone = Phone();
        phone.name = "Oneplus 9"
        phone.price = 729
        phone.company = "Oneplus"
        phone.features = ["\u{2022} Hasselblad Pro Mode w/ 12-bit RAW Support", "\u{2022} 65W Fast Charging","\u{2022} 5G Capable","\u{2022} Dolby Atmos® Cinematic Dual Speakers"]
        phone.description = "The OnePlus 9 5G delivers a flagship smartphone experience that bundles together premium, high-quality features. Take your best shot with the triple camera system that blends high-quality camera hardware combined with Natural Color Calibration co-developed with Hasselblad, the world-renowned camera manufacturer. "
        phone.url = "https://www.t-mobile.com/cell-phone/oneplus-9-5g?sku=610214668226"
        phone.photo = "oneplus_9_pro-1"
        WishlistViewController.phones.append(phone)
        
        
    }
}
