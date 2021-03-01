//
//  EmployeeViewModel.swift
//  MVVM iOS
//
//  Created by FGT MAC on 3/1/21.
//

import Foundation

class EmployeeViewModel: NSObject {
    
    private var apiServices: APIService!
    //Private set makes the property publicly redable not not settable
    private(set) var empData: Employees! {
        didSet {
            self.bindEmployeeViewModelToController()
        }
    }
    
    var bindEmployeeViewModelToController: (()->()) = {}
    
    override init() {
        super.init()
        self.apiServices = APIService()
        callFuncToGetEmpData()
    }
    
    func callFuncToGetEmpData() {
        self.apiServices.apiToGetEmployeeData { (empData) in
            //Set the empData property to trigger didSet and bindEmployeeViewModelToController()
            self.empData = empData
            
        }
    }

}
