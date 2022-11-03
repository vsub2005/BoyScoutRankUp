//
//  ViewController.swift
//  Boy Scout Quiz App
//
//  Created by Vinay Subramanian on 7/26/22.
//

import UIKit

public let ranks = ["Scout", "Tenderfoot", "Second Class", "First Class"]
let textCellIdentifier = "TextCell"
let segueIdentifier = "SI"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath as IndexPath)
        let row = indexPath.row
        cell.textLabel?.text = ranks[row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ranks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueIdentifier, let destination = segue.destination as? VC2, let rankIndex = tableView.indexPathForSelectedRow?.row {
            destination.rankSelected = ranks[rankIndex]
        }
    }

}

