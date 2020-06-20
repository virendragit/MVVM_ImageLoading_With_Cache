//
//  DataCache.swift
//  code_test
//
//  Created by Virendra Gupta on 6/20/20.
//  Copyright © 2020 sample. All rights reserved.
//

import UIKit

class DataCache: NSObject {
    
    static let shared = DataCache()
    
    private(set) var cache: NSCache<AnyObject, AnyObject> = NSCache()
    
    func getImageFromCache(key: String) -> UIImage? {
        if (self.cache.object(forKey: key as AnyObject) != nil){
            return self.cache.object(forKey: key as AnyObject) as? UIImage
        }else {
            return nil
        }
    }
    
    func saveImageToCache(key: String, image: UIImage){
        self.cache.setObject(image, forKey: key as AnyObject)
    }
    
}
