//
//  WishlistViewController.swift
//  iSee
//
//  Created by Mathew Chanda on 5/14/21.
//

import UIKit

class WishlistViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    static var phones : [Phone] = []

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 150
        
        NotificationCenter.default.addObserver(self, selector: #selector(loadTableData(notification:)), name: NSNotification.Name(rawValue: "loadTableData"), object: nil)
    }
    
    @objc func loadTableData(notification: Notification){
            self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return WishlistViewController.phones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WishlistCell") as! WishlistCell
        let phone =  WishlistViewController.phones[indexPath.row]
        
        cell.name.text = phone.name
        cell.Price.text = "Price: \(phone.price ?? 799.00)"
        cell.phone = phone
        
        return cell; 
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Change the selected background view of the cell.
        tableView.deselectRow(at: indexPath, animated: true)
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
