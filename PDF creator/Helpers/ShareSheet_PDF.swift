//
//  ShareSheet_PDF.swift
//  PDF creator
//
//  Created by Noice_anas on 14/06/2022.
//

import SwiftUI

// MARK: Share Sheet
struct ShareSheet_PDF: UIViewControllerRepresentable{
    
    var urls: [Any]
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: urls, applicationActivities: nil)
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        
    }
}
