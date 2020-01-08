//
//  PDFViewController.swift
//  NB
//
//  Created by Bhanu Pratap Singh Thapliyal on 08/01/20.
//  Copyright © 2020 Bhanu Pratap Singh Thapliyal. All rights reserved.
//

import UIKit
import PDFKit
class PDFViewController: UIViewController {
    
        var filePath = " "

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pdfView = PDFView(frame: self.view.bounds)
        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(pdfView)
        
        // Fit content in PDFView.
        pdfView.autoScales = true
        
        // Load Sample.pdf file from app bundle.
        let bundleURL = Bundle.main.url(forResource: "Sample", withExtension: "pdf")
        let fileURL = URL.init(fileURLWithPath: filePath)
        pdfView.document = PDFDocument(url: fileURL)
     
    }
    
}
