//
//  Employee.swift
//  MVVM iOS
//
//  Created by FGT MAC on 3/1/21.
//

import Foundation

// MARK: - Welcome
struct Employees: Codable {
    let status: String
    let data: [EmployeeData]
}

// MARK: - Datum
struct EmployeeData: Codable {
    let id, employeeName, employeeSalary, employeeAge: String
    let profileImage: String

    enum CodingKeys: String, CodingKey {
        case id
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}
