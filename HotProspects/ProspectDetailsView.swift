//
//  ProspectDetailsView.swift
//  HotProspects
//
//  Created by Lin Ochoa on 2/19/25.
//

import SwiftData
import SwiftUI

struct ProspectDetailsView: View {
    @Bindable var prospect: Prospect
    
    var body: some View {
        Form {
            TextField("Name", text: $prospect.name)
            TextField("Email Address", text: $prospect.emailAddress)
            Toggle("Contacted", isOn: $prospect.isContacted)
        }
        .navigationTitle("Prospect Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Prospect.self, configurations: config)
        let example = Prospect(name: "example user", emailAddress: "example@example.com", isContacted: false)
        return ProspectDetailsView(prospect: example)
            .modelContainer(container)
    } catch {
        return Text("failed to load preview data: \(error.localizedDescription)")
    }
}
