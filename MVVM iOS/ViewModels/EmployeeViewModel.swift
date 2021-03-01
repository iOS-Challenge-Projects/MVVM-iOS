//
//  EmployeeViewModel.swift
//  MVVM iOS
//
//  Created by FGT MAC on 3/1/21.
//

import Foundation

class EmployeeViewModel: NSObject {
    
    private var apiServices: APIService!
    
    override init() {
        super.init()
        self.apiServices = APIService()
        callFuncToGetEmpData()
    }
    
    func callFuncToGetEmpData() {
        self.apiServices.apiToGetEmployeeData { (empData) in
            print(empData)
            
        }
    }

}
