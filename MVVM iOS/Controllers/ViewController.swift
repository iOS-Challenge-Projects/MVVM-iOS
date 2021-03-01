//
//  ViewController.swift
//  MVVM iOS
//
//  Created by FGT MAC on 3/1/21.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    private var employeeViewModel: EmployeeData!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        callToViewModelForUpdate()
    }
    
    //MARK: - Private methods
    func callToViewModelForUpdate() {
        
    }
}

