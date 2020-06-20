//
//  ImageModel.swift
//  code_test
//
//  Created by Virendra Gupta on 6/20/20.
//  Copyright © 2020 sample. All rights reserved.
//

import UIKit

struct ImageModel {
    let imageURL: String
    
    init(withPhotos photo:Photos) {
        imageURL = photo.imageURL
    }
}
