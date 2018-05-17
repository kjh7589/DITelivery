//
//  DeliveryTableViewController.swift
//  DITelivery
//
//  Created by D7703_25 on 2018. 5. 17..
//  Copyright © 2018년 D7703_25. All rights reserved.
//

import UIKit

class DeliveryTableViewController: UITableViewController {
    var foodStoreName = ["번개반점","왕짜장","홍콩반점","아딸","늘해랑","토마토"]
    var foodStoreImages = ["01","02","03","04","05","06"]
    var foodStoreAddress = ["부산광역시 부산진구 양정동 418-282","부산광역시 부산진구 양정동 418-282","부산광역시 부산진구 양정동 418-282","부산광역시 부산진구 양정동 418-282","부산광역시 부산진구 양정동 418-282","부산광역시 부산진구 양정동 418-282"]
    var foodStoreType = ["중화요리","중화요리","중화요리","분식","돼지국밥","도시락"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.title = "dit 배달통"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }*/

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodStoreName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = foodStoreName[indexPath.row]
        cell.detailTextLabel?.text = foodStoreAddress[indexPath.row]
        cell.imageView?.image = UIImage(named: foodStoreImages[indexPath.row])
        
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
