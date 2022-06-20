//
//  OperatorsVC.swift
//  R6S Operators Info
//
//  Created by Илья Терновской on 12.05.2022.
//

import UIKit

class OperatorsVC: UITableViewController {
    
    var operators = Operators.getAttack()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 150
        
        let image = UIImage(named: "background5")
        tableView.backgroundView = UIImageView(image: image)
        tableView.tintColor = .black
        
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        operators.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "operatorsList", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let operatorAttack = operators[indexPath.row]
       
        content.textProperties.font = UIFont.systemFont(ofSize: 30)
        content.text = operatorAttack.name
        content.image = UIImage(named: operatorAttack.title)
       
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let operatorInfoVC = segue.destination as? OperatorInfoVC else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let attack = operators[indexPath.row]
        operatorInfoVC.operatorInfo = attack
    }

}
