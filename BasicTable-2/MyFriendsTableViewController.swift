//
//  MyFriendsTableViewController.swift
//  BasicTable-2
//
//  Created by Arifur Rahman ZERIN on 7/25/21.
//

import UIKit


struct MyFriends{
    var id: Int
    var name: String
    var phone: String
}

class MyFriendsTableViewController: UITableViewController {

    var myFriends = [
        MyFriends(id: 1, name: "ZERIN", phone: "01613243663"),
        MyFriends(id: 2, name: "Jesmin", phone: "017113243663"),
        MyFriends(id: 3, name: "Riyal", phone: "01613243663"),
        MyFriends(id: 4, name: "Leon", phone: "01613243663"),
        MyFriends(id: 5, name: "Manalia", phone: "01613243663")
        
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.isEditing = true

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myFriends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        //cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
        
        let myfriend = myFriends[indexPath.row]
        cell.textLabel?.text = "\(myfriend.name)"
        
        cell.detailTextLabel?.text =   myfriend.phone
        
        cell.imageView?.image = UIImage(named: "\(myfriend.id)") //myfriend.id is Int, thats why settting as string to avoid error
        
        
        
        
        
        
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Contact Book"
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedObject = self.myFriends[sourceIndexPath.row]
        myFriends.remove(at: sourceIndexPath.row)
        myFriends.insert(movedObject, at: destinationIndexPath.row)
        debugPrint("\(sourceIndexPath.row) => \(destinationIndexPath.row)")
        // To check for correctness enable: self.tableView.reloadData()
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
