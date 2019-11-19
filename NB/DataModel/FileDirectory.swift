//
//  FileDirectory.swift
//  NB
//
//  Created by Bhanu Pratap Singh Thapliyal on 04/11/19.
//  Copyright © 2019 Bhanu Pratap Singh Thapliyal. All rights reserved.
//

import Foundation

class FileDirectory{
  
    
    static let DOCURL = FileManager.SearchPathDirectory.documentDirectory
    static let domainmask = FileManager.SearchPathDomainMask.userDomainMask
    
    static let documentsURL = (NSSearchPathForDirectoriesInDomains(DOCURL, domainmask, true)[0]
        as NSString).strings(byAppendingPaths: ["NB"])
    
    
    static let docURL  = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
//    static let documentsURL = docURL.appendingPathComponent("NB")
//    static let URLPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
    
}
