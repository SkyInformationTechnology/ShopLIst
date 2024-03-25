//
//  ViewController.swift
//  ShopLIst
//
//  Created by Shishir_Mac on 20/2/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showSegmentedControl: UISegmentedControl!
    @IBOutlet weak var showTableView: UITableView!
    
    var names: [String] = ["Atik", "Ali", "Shishir", "Akib"]
    var photos: [String] = ["Logo", "Logo", "Logo"]
    
    let photoCellIdentifier: String = "photoCell"
    let nameCellIdentifier: String = "nameCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Home"
        
        showTableView.delegate = self
        showTableView.dataSource = self
        
        self.showTableView.register(UINib(nibName: "PhotoTableViewCell", bundle: nil), forCellReuseIdentifier: photoCellIdentifier)
        self.showTableView.register(UINib(nibName: "NameTableViewCell", bundle: nil), forCellReuseIdentifier: nameCellIdentifier)
        
    }
    
    @IBAction func showSegmentedControlAction(_ sender: Any) {
        switch showSegmentedControl.selectedSegmentIndex {
        case 0:
            print("First Segment Selected")
            showTableView.reloadData()
        case 1:
            print("Second Segment Selected")
            showTableView.reloadData()
        default:
            break
        }
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch showSegmentedControl.selectedSegmentIndex {
        case 0:
            return names.count
        case 1:
            return photos.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch showSegmentedControl.selectedSegmentIndex {
        case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: nameCellIdentifier) as? NameTableViewCell {
                cell.nameLabel.text = names[indexPath.row]
                return cell
            }
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: photoCellIdentifier) as? PhotoTableViewCell {
                cell.showImageView.image = UIImage(named: photos[indexPath.row])
                return cell
            }
        default:
            return UITableViewCell()
        }
        
        return UITableViewCell()
    }
    
    
}


