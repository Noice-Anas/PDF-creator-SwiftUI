//
//  ContentView.swift
//  PDF creator
//
//  Created by Noice_anas on 14/06/2022.
//

import SwiftUI

struct ContentView: View {
    let filename = "hii everyone this is working"
    
    var body: some View {
        ScrollView {
                Text(filename)
            Button {
                sharePDF(content: {self}, fileName: filename)
                
            } label: {
                Text("click me to share")
            }
            .buttonStyle(.borderedProminent)

        }
    }
    
    private func sharePDF<Content: View> (@ViewBuilder content: @escaping () -> Content, fileName: String) {
        exportPDF(content: content, completion: { status , url in
            if let url = url, status {
                ShareSheet.instance.share(items: [url])
            } else {
                print("⚠️ Failed to make PDF")
            }
        }, fileName: fileName)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

