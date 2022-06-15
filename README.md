# PDF-creator-SwiftUI
Allows you to make any view into a shareable pdf file, that can be downloaded or shared through the share sheet

You just need to use the function //sharePDF<Content: View> (@ViewBuilder content: @escaping () -> Content, fileName: String)//
the content is the view you want to make to a PDF and share, and the fileName is whatever you want to share your PDF names as.
