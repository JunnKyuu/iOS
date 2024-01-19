//
//  SafariView.swift
//  AppleFramework-SwiftUI
//
//  Created by JunKyu Lee on 1/19/24.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->
    SFSafariViewController {
    SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context:
                                UIViewControllerRepresentableContext<SafariView>) {}
}
