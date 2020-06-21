//
//  FlickrSearchResults.swift
//  code_test
//
//  Created by Virendra Gupta on 6/20/20.
//  Copyright © 2020 sample. All rights reserved.
//

import UIKit

struct ImageDetails: Decodable {
    
    let format:  String
    let width:   Int
    let height: Int
    let filename: String
    let id : Int
    let author: String
    let author_url : String
    let post_url: String
}
