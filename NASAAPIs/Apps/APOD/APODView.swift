//
//  APODView.swift
//  NASAAPIs
//
//  Created by Ivan Quintana on 05/09/23.
//

import SwiftUI

class APODViewModel: ObservableObject {
    let imageURL: URL? = nil
}

struct APODView: View {
    @ObservedObject var viewModel: APODViewModel = .init()
    
    var body: some View {
        VStack {
            Text("Image of the day:")
            Spacer()
            AsyncImage(
                url: viewModel.imageURL,
                content: { _ in Text("Image") },
                placeholder: { Image(systemName: "clock") }
            )
            Spacer()
        }
        .navigationTitle("APOD")
    }
}

#Preview {
    APODView()
}
