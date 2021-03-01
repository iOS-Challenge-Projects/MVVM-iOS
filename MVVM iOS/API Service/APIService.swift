//
//  APIService.swift
//  MVVM iOS
//
//  Created by FGT MAC on 3/1/21.
//

import Foundation

class APIService: NSObject {
    
    private var baseURL: URL = URL(string: "http://dummy.restapiexample.com/api/v1/employees")!
    
    func apiToGetEmployeeData( completion: @escaping (Employees) -> ()) {
        
        URLSession.shared.dataTask(with: baseURL) { (data, _, error) in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                
                do{
                    let empData = try jsonDecoder.decode(Employees.self, from: data)
                    completion(empData)
                }catch{
                    print("Error decoding data")
                }
            }
        }.resume()
    }
    
}
