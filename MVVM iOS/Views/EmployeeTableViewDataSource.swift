//
//  EmployeeTableViewDataSource.swift
//  MVVM iOS
//
//  Created by FGT MAC on 3/1/21.
//

import UIKit

class EmployeeTableViewDataSource<CELL : UITableViewCell,T>: NSObject, UITableViewDataSource {
    
    //MARK: - Properties
    private var cellIdentifier: String!
    private var items : [T]!
    var configureCell: (CELL, T) -> () = {_,_ in}
    
    init(cellIdentifier : String, items : [T], configureCell : @escaping (CELL, T) -> ()) {
        self.cellIdentifier = cellIdentifier
        self.items = items
        self.configureCell = configureCell
    }
    
    //MARK: - Data source methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CELL
        
        let item = self.items[indexPath.row]
        
        self.configureCell(cell,item)
        
        return cell
    }
    
    
}
