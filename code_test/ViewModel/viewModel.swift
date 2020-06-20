//
//  viewModel.swift
//  code_test
//
//  Created by Virendra Gupta on 6/20/20.
//  Copyright © 2020 sample. All rights reserved.
//

import UIKit

class viewModel: NSObject {
    
    func loadImages(completion:@escaping () -> Void) {
//        searchText = text
 //       photoArray.removeAll()
        fetchData(completion: completion)
    }
    
    
    private func fetchData(completion:@escaping () -> Void){
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
    }
}
