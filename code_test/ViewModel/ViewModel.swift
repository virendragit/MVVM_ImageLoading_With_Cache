//
//  viewModel.swift
//  code_test
//
//  Created by Virendra Gupta on 6/20/20.
//  Copyright © 2020 sample. All rights reserved.
//

import UIKit

class viewModel: NSObject {
    
    private var searchText = ""
    private var pageNo = 1
    private var totalPageNo = 1
    
    func loadImages(completion:@escaping () -> Void) {
//        searchText = text
 //       photoArray.removeAll()
        fetchData(completion: completion)
    }
    
    
    private func fetchData(completion:@escaping () -> Void){
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
        Services().request(searchText, pageNo: pageNo){(result) in
            
            GCD.runOnMainThread {
            
                UIApplication.shared.isNetworkActivityIndicatorVisible = false
                
                switch result {
                case .Success(let results):
                    if let result = results {
//                        self.totalPageNo = result.pages
//                        self.photoArray.append(contentsOf: result.photo)
//                        self.dataUpdated?()
                    }
                    completion()
                case .Failure(let message):
//                    self.showAlert?(message)
                    completion()
                case .Error(let error):
                    if self.pageNo > 1 {
//                        self.showAlert?(error)
                    }
                    completion()
                }
            }
            
        }

        
    }
}
