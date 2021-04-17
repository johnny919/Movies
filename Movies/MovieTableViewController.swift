//
//  MovieTableViewController.swift
//  Movies
//
//  Created by LIU SHANG WEI on 2021/4/13.
//

import UIKit

class MovieTableViewController: UITableViewController {
    var movie = Movie(name: "", years: "", imageName: "", introduction: "")
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        var count = 0
        if section == 0 {
            count = Movie.favorite.count
        }else if section == 1 {
            count = Movie.horror.count
        }else {
            count = Movie.drama.count
        }
        return count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(MovieTableViewCell.self)", for: indexPath) as! MovieTableViewCell
        if indexPath.section == 0 {
            movie = Movie.favorite[indexPath.row]
        }else if indexPath.section == 1 {
            movie = Movie.horror[indexPath.row]
        }else {
            movie = Movie.drama[indexPath.row]
        }
        
        cell.nameLabel.text = movie.name
        //cell.detailTextLabel?.text = movie.years
        cell.movieImageView.image = UIImage(named: movie.imageName)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "我的最愛"
        case 1:
            return "恐怖片"
        case 2:
            return "劇情片"
        default:
            return ""
        }
    }
    
    @IBSegueAction func showDetail(_ coder: NSCoder) -> MovieDetailViewController? {
        guard let section = tableView.indexPathForSelectedRow?.section else {
            return nil
        }
        guard let row = tableView.indexPathForSelectedRow?.row else {
            return nil
        }
        switch section {
        case 0:
            movie = Movie.favorite[row]
        case 1:
            movie = Movie.horror[row]
        case 2:
            movie = Movie.drama[row]
        default: break
            
        }
        return MovieDetailViewController(coder: coder, movie: movie)
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
