//
//  ProspectDetailsView.swift
//  HotProspects
//
//  Created by Lin Ochoa on 2/19/25.
//

import SwiftUI

struct ProspectDetailsView: View {
    @Bindable var prospect: Prospect
    
    var body: some View {
        Form {
            TextField("Name", text: $prospect.name)
            TextField("Email Address", text: $prospect.emailAddress)
        }
    }
}

#Preview {
    ProspectDetailsView(prospect: Prospect(name: "example user", emailAddress: "example@example.com", isContacted: false))
}
