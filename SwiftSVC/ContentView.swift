//
//  ContentView.swift
//  SwiftSVC
//
//  Created by Iván Darío Sánchez Jiménez on 25/07/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        // No es necesario implementar nada aquí, ya que no se actualizará nada en este caso.
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button("Abrir Safari") {
                if let url = URL(string: "https://www.mercadopago.com.ar/checkout/v1/redirect?preference-id=239658604-49220b41-cdfe-4dd0-b41c-bf806e95ed3c&device-override=mobile") {
                    UIApplication.shared.windows.first?.rootViewController?.present(UIHostingController(rootView: SafariView(url: url)), animated: true, completion: nil)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
