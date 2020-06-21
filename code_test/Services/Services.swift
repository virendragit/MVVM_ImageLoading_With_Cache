//
//  Services.swift
//  code_test
//
//  Created by Virendra Gupta on 6/20/20.
//  Copyright © 2020 sample. All rights reserved.
//

import Foundation

class Services: NSObject {
    
    func request(_ searchText: String, pageNo: Int, completion: @escaping (Result<Photos?>) -> Void) {
        
        guard let request = RequestConfig.apiRequest.value else {
            return
        }
        
        NetworkManager.shared.request(request) { (result) in
            switch result {
            case .Success(let responseData):
                if let model = self.processResponse(responseData) {
                    print(model)
//                    if let stat = model.stat, stat.uppercased().contains("OK") {
//                        return completion(.Success(model.photos))
//                    } else {
//                        return completion(.Failure(NetworkManagoer.errorMessage))
//                    }
                } else {
                    return completion(.Failure(NetworkManager.errorMessage))
                }
            case .Failure(let message):
                return completion(.Failure(message))
            case .Error(let error):
                return completion(.Failure(error))
            }
        }
    }
    
    func processResponse(_ data: Data) -> [ImageDetails]? {
        do {
            let responseModel = try JSONDecoder().decode([ImageDetails].self, from: data)
            
            return responseModel

        } catch {
            print("Data parsing error: \(error.localizedDescription)")
            return nil
        }
    }
}
