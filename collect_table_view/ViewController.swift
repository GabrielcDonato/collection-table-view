//
//  ViewController.swift
//  collect_table_view
//
//  Created by Premiersoft on 11/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CustomTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configTableView()
    }

    
    
    func configTableView( ){
        CustomTable.delegate = self
        CustomTable.dataSource = self
        CustomTable.register(CustomTableViewCell.nib(), forCellReuseIdentifier:      CustomTableViewCell.identifier)
    }

}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CustomTable.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        return cell ?? UITableViewCell()
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 300
    }
    
}

