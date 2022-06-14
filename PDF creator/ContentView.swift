//
//  ContentView.swift
//  PDF creator
//
//  Created by Noice_anas on 14/06/2022.
//

import SwiftUI

struct ContentView: View {
    let filename = "hii everyone this is working"
    @StateObject var vm = ContentView_ViewModel()
   
    
    var body: some View {
        ScrollView {
                Text(filename)
            Button {
                exportPDF(content: {self}, completion: { status , url in
                    if let url = url, status {
                        vm.PDF_URl = url
                        vm.showShareSheet = true
                    } else {
                        print("⚠️ Failed to make PDF")
                    }
                }, fileName: filename)
                
            } label: {
                Text("click me to share")
            }
            .buttonStyle(.borderedProminent)

        }
        .sheet(isPresented: $vm.showShareSheet, onDismiss: {vm.PDF_URl = nil}, content: {
            if let PDF_URl = vm.PDF_URl {
                ShareSheet_PDF(urls: [PDF_URl])
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


class ContentView_ViewModel: ObservableObject {
    @Published var PDF_URl: URL?
    @Published var showShareSheet = false
}
