//
//  FileDirectory.swift
//  NB
//
//  Created by Bhanu Pratap Singh Thapliyal on 04/11/19.
//  Copyright © 2019 Bhanu Pratap Singh Thapliyal. All rights reserved.
//

import Foundation

class FileDirectory{
  
    static let documentURL  = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    static let documentsURL = documentURL.appendingPathComponent("NB")
//    static let URLPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
//    static let GlobalFileURL = URLPath + "/NB"
    
}
