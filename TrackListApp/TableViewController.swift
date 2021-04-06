//
//  TableViewController.swift
//  TrackListApp
//
//  Created by Nikita on 30.03.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    var trackList = [
        "CHVRCHES - Death Stranding",
        "Low Roar-Don't be so serious",
        "AuRa, Alan Walker - Ghost",
        "Ludvig Forssell - BB's Theme",
        "Low Roar - Easy Way Out",
        "AuRa - Dead Girl!",
        "Dua Lipa - Levitating Featuring DaBaby",
        "Dua Lipa - Let's Get Physical Work Out",
        "Murdbrain - Warzone",
        "Zaz - Je Veux",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return trackList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackName", for: indexPath)

        cell.textLabel?.text = trackList[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.imageView?.image = UIImage(named: trackList[indexPath.row])

        return cell
    }
    
    


    // MARK: - Tebla view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let currentTrack = trackList.remove(at: sourceIndexPath.row)
        trackList.insert(currentTrack, at: destinationIndexPath.row)
        tableView.reloadData()
        
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DescriptionViewController
            detailVC.trackName = trackList[indexPath.row]
        }
    }
    

}
