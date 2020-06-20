//
//  Model.swift
//  code_test
//
//  Created by Virendra Gupta on 6/20/20.
//  Copyright © 2020 sample. All rights reserved.
//

import Foundation

struct Photos: Codable {
    
    // Define properties representing
    // your app's data here.
    
    
    var imageURL: String {
         let urlString = String(format:"abc.com")
         return urlString
     }
    
}
