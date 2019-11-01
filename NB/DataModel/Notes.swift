//
//  Notes.swift
//  NB
//
//  Created by Bhanu Pratap Singh Thapliyal on 14/10/19.
//  Copyright © 2019 Bhanu Pratap Singh Thapliyal. All rights reserved.


import Foundation
import UIKit

class Notes{
    var Author: String
    var Title: String
    var Views: Int
    var Date: String
    var size: Int
    var url: String

    init(Author: String,Title: String,Views: Int,Date: String,size: Int,url:String){
        self.Author = Author
        self.Title = Title
        self.Views = Views
        self.Date = Date
        self.size = size
        self.url = url
    }
}
