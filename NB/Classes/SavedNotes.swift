//
//  SavedNotes.swift
//  NB
//
//  Created by Bhanu Pratap Singh Thapliyal on 04/11/19.
//  Copyright © 2019 Bhanu Pratap Singh Thapliyal. All rights reserved.
//

import Foundation

class SavedNotes{
    var Title: String
    var URLofFile: URL // URL llocation of the stored file

    init(Title: String,URLofFile:URL){
        self.Title = Title
        self.URLofFile = URLofFile
    }
}
