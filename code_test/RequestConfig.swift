//
//  RequestConfig.swift
//  code_test
//
//  Created by Virendra Gupta on 6/20/20.
//  Copyright © 2020 sample. All rights reserved.
//

import UIKit

enum RequestConfig {
    
    case apiRequest
    
    var value: Request? {
        
        switch self {
            
        case .apiRequest:
            let urlString = String(format: Constants.apiURL)
            let reqConfig = Request.init(requestMethod: .get, urlString: urlString)
            return reqConfig
        }
    }
}
