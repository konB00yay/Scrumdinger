//
//  ScrumdingerApp.swift
//  Shared
//
//  Created by Konnor Beaulier on 8/27/21.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @ObservedObject private var data = ScrumData()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $data.scrums) {
                    data.save()
                }
            }
            .onAppear{
                data.load()
            }
        }
    }
}
