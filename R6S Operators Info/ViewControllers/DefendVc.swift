//
//  DefendVc.swift
//  R6S Operators Info
//
//  Created by Илья Терновской on 13.05.2022.
//

import UIKit

class DefendVc: UITableViewController {

    private var defend = Defend.getDefend()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 150
        
        let image = UIImage(named: "background5")
        tableView.backgroundView = UIImageView(image: image)


    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        defend.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "defendList", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let operatorAttack = defend[indexPath.row]
        
        content.textProperties.font = UIFont.systemFont(ofSize: 30)
        content.text = operatorAttack.name
        content.image = UIImage(named: operatorAttack.title)
       
        cell.contentConfiguration = content

        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let defendInfoVC = segue.destination as? DefendInfoVC else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let defend = defend[indexPath.row]
        defendInfoVC.defendInfo = defend
    }

}
