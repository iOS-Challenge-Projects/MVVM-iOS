//
//  ViewController.swift
//  MVVM iOS
//
//  Created by FGT MAC on 3/1/21.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var employeeTableView: UITableView!
    
    //MARK: - Properties
    private var employeeViewModel: EmployeeViewModel!
    private var dataSource : EmployeeTableViewDataSource<EmployeeTableViewCell,EmployeeData>!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        callToViewModelForUIUpdate()
    }
    
    //MARK: - Private methods
    func callToViewModelForUIUpdate() {
        self.employeeViewModel = EmployeeViewModel()
        //Call the func to update data source in the closure
        self.employeeViewModel.bindEmployeeViewModelToController = {
            self.updataDataSource()
        }
    }
    
    func updataDataSource() {
        self.dataSource = EmployeeTableViewDataSource(cellIdentifier: "EmployeeTableViewCell", items: self.employeeViewModel.empData.data, configureCell: { (cell, evm) in
                   cell.employeeIdLabel.text = evm.id
                   cell.employeeNameLabel.text = evm.employeeName
               })
        
        DispatchQueue.main.async {
                    self.employeeTableView.dataSource = self.dataSource
                    self.employeeTableView.reloadData()
                }
    }
}

